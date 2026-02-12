extends Node

const INTRO_MESSAGE := "Hi! Welcome to Virtue.App. Ready to guide some humans?"
const DEPARTMENT_MESSAGE := "Select a Department"
const ASSIGNING_MESSAGE := "Assigning you a new Subject..."
const RESTART_MESSAGE := "A new Subject awaits. Ready to guide again?"
const RESTART_DEPARTMENT_MESSAGE := "Choose a Department."
const BUTTON_MESSAGE_DELAY := 0.3
const MILESTONE_CONTENT = preload("res://scripts/resources/MilestonePools.tres")
const OUTCOME_GREAT_MAX_RATIO := 1.0
const OUTCOME_GOOD_MAX_RATIO := 1.25
const OUTCOME_BAD_MAX_RATIO := 1.6
const RUN_DAY_TARGET := 30
const TRACKED_STATS := ["Intellect", "Aesthetic", "Health", "Volatility", "Affect", "Nature"]

var _main_scene: Node
var _feed: Node
var _header: Node
var _current_department := ""
var _run_active: bool = false
var _run_finished: bool = false
var _run_days: int = 0
var _run_start_stats: Dictionary = {}

func _ready() -> void:
	await get_tree().process_frame
	_main_scene = get_tree().current_scene
	_feed = _get_feed()
	_header = _get_header()
	if _feed == null:
		push_error("GameManager: Feed node not found.")
		return
	if _feed.has_signal("department_selected") and not _feed.is_connected("department_selected", _on_department_selected):
		_feed.connect("department_selected", _on_department_selected)
	if _main_scene and _main_scene.has_signal("next_day_pressed") and not _main_scene.is_connected("next_day_pressed", _on_day_advanced):
		_main_scene.connect("next_day_pressed", _on_day_advanced)
	_run_intro_flow()

func _run_intro_flow() -> void:
	if _feed.has_method("show_message_feed"):
		_feed.show_message_feed()
	if _feed.has_method("post_message"):
		_feed.post_message(INTRO_MESSAGE)
	await get_tree().create_timer(1.0).timeout
	if _feed.has_method("post_message"):
		_feed.post_message(DEPARTMENT_MESSAGE)
	await get_tree().create_timer(0.5).timeout
	if _feed.has_method("show_department_cards"):
		_feed.show_department_cards()

func _get_feed() -> Node:
	if _main_scene == null:
		return null
	if _main_scene.has_node("MainContent/Feed"):
		return _main_scene.get_node("MainContent/Feed")
	return null

func _get_header() -> Node:
	if _main_scene == null:
		return null
	if _main_scene.has_node("Header"):
		return _main_scene.get_node("Header")
	return null

func _on_department_selected(department: String) -> void:
	_current_department = department
	_ensure_header()
	if _header and _header.has_method("set_department_badge"):
		_header.set_department_badge(department)
	var sound := get_node_or_null("/root/Soundmanager")
	if sound and sound.has_method("play_department"):
		sound.play_department(department)
	await get_tree().create_timer(BUTTON_MESSAGE_DELAY).timeout
	if _feed and _feed.has_method("post_message"):
		var dept_lower := department.to_lower()
		if dept_lower == "angel":
			_feed.post_message("Welcome to the Angel Department, let's make the world a better place.")
		elif dept_lower == "devil":
			_feed.post_message("Welcome to the Devil Department, let's cause some mischief.")
	await get_tree().create_timer(1.5).timeout
	if _feed and _feed.has_method("post_message"):
		_feed.post_message(ASSIGNING_MESSAGE)
	if _feed and _feed.has_method("show_loading"):
		_feed.show_loading()
	await get_tree().create_timer(5.0).timeout
	var generator := get_node_or_null("/root/SubjectGenerator")
	var subject: SubjectResource = null
	if generator and generator.has_method("generate_subject"):
		subject = generator.generate_subject()
	if _feed and _feed.has_method("hide_loading"):
		_feed.hide_loading()
	if subject == null:
		return
	if _header and _header.has_method("set_subject"):
		_header.set_subject(subject)
	if _feed and _feed.has_method("set_subject"):
		_feed.set_subject(subject)
	_start_run(subject)
	if _feed and _feed.has_method("post_message"):
		_feed.post_message(_format_subject_message(subject))
	await get_tree().create_timer(1.5).timeout
	if _main_scene and _main_scene.has_method("_on_next_day_pressed"):
		_main_scene._on_next_day_pressed()

func get_department() -> String:
	return _current_department

func is_run_active() -> bool:
	return _run_active and not _run_finished

func evaluate_run_state(subject: SubjectResource) -> bool:
	if subject == null:
		return false
	if not is_run_active():
		return false
	var lowest: int = _lowest_stat_value(subject)
	if lowest > 0:
		return true
	_end_run_failure(subject)
	return false

func resolve_guidance_decision(
	subject: SubjectResource,
	player_department: String,
	player_guidance: String,
	player_bonus: int,
	other_department: String,
	other_guidance: String,
	other_bonus: int
) -> Dictionary:
	if other_guidance.strip_edges() == "":
		return {"guidance": player_guidance, "bonus": player_bonus, "department": player_department}
	var player_score: float = _score_guidance_option(subject, player_department, player_bonus)
	var other_score: float = _score_guidance_option(subject, other_department, other_bonus)
	if other_score > player_score:
		return {"guidance": other_guidance, "bonus": other_bonus, "department": other_department}
	return {"guidance": player_guidance, "bonus": player_bonus, "department": player_department}

func handle_guidance_choice(
	subject: SubjectResource,
	player_department: String,
	player_guidance: String,
	other_department: String,
	other_guidance: String,
	milestone_id: String
) -> Dictionary:
	if subject == null:
		return {}
	var player_bonus: int = _roll_guidance_bonus()
	var other_bonus: int = _roll_guidance_bonus() if other_guidance.strip_edges() != "" else 0
	var decision: Dictionary = resolve_guidance_decision(
		subject,
		player_department,
		player_guidance,
		player_bonus,
		other_department,
		other_guidance,
		other_bonus
	)
	var winning_guidance: String = String(decision.get("guidance", player_guidance))
	var winning_bonus: int = int(decision.get("bonus", player_bonus))
	var winning_department: String = String(decision.get("department", player_department))
	var outcome: Dictionary = _resolve_guidance_outcome(subject, winning_bonus)
	_apply_outcome_adjustment(subject, int(outcome.get("adjustment", 0)))
	var outcome_result: String = String(outcome.get("result", "Good"))
	_apply_morality_outcome(subject, winning_department, outcome_result)
	if not evaluate_run_state(subject):
		return {
			"guidance": winning_guidance,
			"bonus": winning_bonus,
			"department": winning_department,
			"result": String(outcome.get("result", "Good")),
			"adjustment": int(outcome.get("adjustment", 0))
		}
	if _feed and _feed.has_method("post_guidance_message"):
		_feed.post_guidance_message("You suggested %s" % player_guidance, 0.5)
		if other_guidance.strip_edges() != "":
			_feed.post_guidance_message(
				"%s suggested %s" % [_format_department_label(other_department), other_guidance],
				1.5
			)
		_feed.post_guidance_message(
			"After some consideration, %s decided to %s" % [String(subject.name), _with_sentence_end(winning_guidance)],
			2.0
		)
		var outcome_adjustment: int = int(outcome.get("adjustment", 0))
		var outcome_message: String = MILESTONE_CONTENT.get_outcome_message(
			milestone_id,
			outcome_result,
			subject,
			String(subject.target_stat),
			outcome_adjustment
		)
		if outcome_message != "":
			_feed.post_guidance_message(outcome_message, 4.0)
	return {
		"guidance": winning_guidance,
		"bonus": winning_bonus,
		"department": winning_department,
		"result": String(outcome.get("result", "Good")),
		"adjustment": int(outcome.get("adjustment", 0))
	}

func _format_subject_message(subject: SubjectResource) -> String:
	var intellect_desc := _intellect_descriptor(subject.Intellect)
	var aesthetic_desc := _aesthetic_descriptor(subject.Aesthetic)
	var health_desc := _health_descriptor(subject.Health)
	var volatility_desc := _volatility_descriptor(subject.Volatility)
	var nature_desc := _nature_descriptor(subject.Nature)
	var affect_desc := _affect_descriptor(subject.Affect)
	var job_article := _article_for(subject.Job)
	var intellect_article := _article_for(intellect_desc)
	return "Your Subject is %s %s, They work as %s %s, They have %s %s intellect, they're %s, and %s. They are %s, and %s, and generally feeling %s. %s" % [
		subject.name,
		subject.surnam,
		job_article,
		subject.Job,
		intellect_article,
		intellect_desc,
		aesthetic_desc,
		health_desc,
		volatility_desc,
		nature_desc,
		affect_desc,
		_morality_summary(subject)
	]

func _morality_summary(subject: SubjectResource) -> String:
	var angel := int(subject.AngelMorality)
	var devil := int(subject.DevilMorality)
	if abs(angel - devil) <= 5:
		return "They contain multitudes."
	if angel > devil:
		return "They're nice."
	return "They're not the kindest."

func _intellect_descriptor(value: int) -> String:
	if value <= 30:
		return "low"
	if value <= 50:
		return "average"
	if value >= 75:
		return "high"
	return "average"

func _aesthetic_descriptor(value: int) -> String:
	if value <= 30:
		return "ugly"
	if value <= 50:
		return "attractive"
	if value >= 75:
		return "hot"
	return "attractive"

func _health_descriptor(value: int) -> String:
	if value <= 30:
		return "unhealthy"
	if value >= 75:
		return "healthy"
	return "healthy"

func _volatility_descriptor(value: int) -> String:
	if value > 31:
		return "Easy Going"
	if value > 20:
		return "Spontaneous"
	return "Chaotic"

func _nature_descriptor(value: int) -> String:
	if value > 31:
		return "Social"
	if value > 20:
		return "Semi-social"
	return "Anti-Social"

func _affect_descriptor(value: int) -> String:
	if value > 31:
		return "Happy"
	if value > 20:
		return "Fine"
	return "Depressed"

func _article_for(text: String) -> String:
	if text == null or text == "":
		return "a"
	var first_char: String = text.strip_edges().left(1).to_lower()
	if first_char in ["a", "e", "i", "o", "u"]:
		return "an"
	return "a"

func _roll_guidance_bonus() -> int:
	return int([5, 10, 15].pick_random())

func _score_guidance_option(subject: SubjectResource, department: String, bonus: int) -> float:
	var target_stat: String = String(subject.target_stat)
	var current_value: int = _get_subject_stat_value(subject, target_stat)
	var target_value: int = int(subject.target_value)
	var cap: int = _get_stat_cap(target_stat)
	var projected_value: int = min(current_value + bonus, cap)
	var before_distance: int = abs(target_value - current_value)
	var after_distance: int = abs(target_value - projected_value)
	var target_progress: float = float(before_distance - after_distance) * 1.25
	var bonus_weight: float = float(bonus) * 0.2
	var morality_diff: float = float(subject.AngelMorality - subject.DevilMorality)
	var morality_bias: float = morality_diff if department.to_lower() == "angel" else -morality_diff
	morality_bias *= 1.5
	var organic_noise: float = randf_range(-2.0, 2.0)
	return target_progress + bonus_weight + morality_bias + organic_noise

func _get_subject_stat_value(subject: SubjectResource, stat_name: String) -> int:
	match stat_name:
		"Intellect":
			return subject.Intellect
		"Aesthetic":
			return subject.Aesthetic
		"Health":
			return subject.Health
		"Volatility":
			return subject.Volatility
		"Affect":
			return subject.Affect
		"Nature":
			return subject.Nature
	return 0

func _get_stat_cap(stat_name: String) -> int:
	if stat_name in ["Volatility", "Affect", "Nature"]:
		return 50
	return 100

func _resolve_guidance_outcome(subject: SubjectResource, bonus: int) -> Dictionary:
	if subject == null:
		return {"result": "Good", "adjustment": 0}
	var stat_name: String = String(subject.target_stat)
	if stat_name == "":
		return {"result": "Good", "adjustment": 0}
	var cap: int = _get_stat_cap(stat_name)
	var current_value: int = _get_subject_stat_value(subject, stat_name)
	var target_value: int = int(subject.target_value)
	var projected_value: int = min(current_value + bonus, cap)
	var denominator: float = max(1.0, float(projected_value))
	var ratio: float = float(target_value) / denominator
	var result: String = _classify_outcome_ratio(ratio)
	var difference: int = abs(target_value - projected_value)
	var half_difference: int = int(round(float(difference) * 0.5))
	var adjustment: int = 0
	match result:
		"Terrible":
			adjustment = -difference
		"Bad":
			adjustment = -half_difference
		"Great":
			adjustment = difference
		_:
			adjustment = half_difference
	return {"result": result, "adjustment": adjustment}

func _apply_outcome_adjustment(subject: SubjectResource, adjustment: int) -> void:
	if subject == null:
		return
	var stat_name: String = String(subject.target_stat)
	if stat_name == "":
		return
	var current_value: int = _get_subject_stat_value(subject, stat_name)
	var cap: int = _get_stat_cap(stat_name)
	var updated_value: int = clampi(current_value + adjustment, 0, cap)
	_set_subject_stat_value(subject, stat_name, updated_value)
	if _header and _header.has_method("load_in_subject"):
		_header.load_in_subject(subject)

func _classify_outcome_ratio(ratio: float) -> String:
	if ratio <= OUTCOME_GREAT_MAX_RATIO:
		return "Great"
	if ratio <= OUTCOME_GOOD_MAX_RATIO:
		return "Good"
	if ratio <= OUTCOME_BAD_MAX_RATIO:
		return "Bad"
	return "Terrible"

func _set_subject_stat_value(subject: SubjectResource, stat_name: String, value: int) -> void:
	match stat_name:
		"Intellect":
			subject.Intellect = value
		"Aesthetic":
			subject.Aesthetic = value
		"Health":
			subject.Health = value
		"Volatility":
			subject.Volatility = value
		"Affect":
			subject.Affect = value
		"Nature":
			subject.Nature = value

func _start_run(subject: SubjectResource) -> void:
	_run_active = true
	_run_finished = false
	_run_days = 0
	_run_start_stats = _snapshot_stats(subject)

func _on_day_advanced() -> void:
	if not is_run_active():
		return
	_run_days += 1
	if _run_days >= RUN_DAY_TARGET:
		_end_run_success()

func _end_run_failure(subject: SubjectResource) -> void:
	if _run_finished:
		return
	_run_active = false
	_run_finished = true
	_queue_free_header()
	var ailment: String = String(subject.Ailment).strip_edges()
	if ailment == "":
		ailment = "their condition"
	if _feed and _feed.has_method("post_message"):
		_feed.post_message("%s succumbed to %s. We can't win them all." % [subject.name, ailment])
	_schedule_restart_prompt()

func _end_run_success() -> void:
	if _run_finished:
		return
	var generator := get_node_or_null("/root/SubjectGenerator")
	if generator == null or not generator.has_method("get_subject"):
		return
	var subject: SubjectResource = generator.get_subject()
	if subject == null:
		return
	_run_active = false
	_run_finished = true
	_queue_free_header()
	var trend: String = _overall_trend(subject)
	var summary: String = _craft_run_summary(subject)
	if _feed and _feed.has_method("post_message"):
		_feed.post_message("%s is doing %s since you got involved." % [subject.name, trend])
		_feed.post_message(summary)
	_schedule_restart_prompt()

func _overall_trend(subject: SubjectResource) -> String:
	var net_delta: int = 0
	for stat_name in TRACKED_STATS:
		net_delta += _stat_delta(subject, String(stat_name))
	if abs(net_delta) <= 5:
		return "the same"
	if net_delta > 0:
		return "better"
	return "worse"

func _craft_run_summary(subject: SubjectResource) -> String:
	var best_stat := _get_top_delta_stat(subject, true)
	var worst_stat := _get_top_delta_stat(subject, false)
	if best_stat == "" and worst_stat == "":
		return "Their core qualities stayed mostly steady."
	if best_stat != "" and worst_stat != "":
		return "They're %s, but %s." % [_positive_phrase(best_stat), _negative_phrase(worst_stat)]
	if best_stat != "":
		return "They're %s." % _positive_phrase(best_stat)
	return "They're %s." % _negative_phrase(worst_stat)

func _get_top_delta_stat(subject: SubjectResource, positive: bool) -> String:
	var selected_stat := ""
	var selected_delta := 0
	for stat_name in TRACKED_STATS:
		var delta := _stat_delta(subject, String(stat_name))
		if positive:
			if delta > selected_delta:
				selected_delta = delta
				selected_stat = String(stat_name)
		else:
			if delta < selected_delta:
				selected_delta = delta
				selected_stat = String(stat_name)
	return selected_stat

func _stat_delta(subject: SubjectResource, stat_name: String) -> int:
	var baseline: int = int(_run_start_stats.get(stat_name, _get_subject_stat_value(subject, stat_name)))
	var current: int = _get_subject_stat_value(subject, stat_name)
	return current - baseline

func _snapshot_stats(subject: SubjectResource) -> Dictionary:
	return {
		"Intellect": subject.Intellect,
		"Aesthetic": subject.Aesthetic,
		"Health": subject.Health,
		"Volatility": subject.Volatility,
		"Affect": subject.Affect,
		"Nature": subject.Nature
	}

func _lowest_stat_value(subject: SubjectResource) -> int:
	var lowest := 999999
	for stat_name in TRACKED_STATS:
		var value := _get_subject_stat_value(subject, String(stat_name))
		if value < lowest:
			lowest = value
	return lowest

func _positive_phrase(stat_name: String) -> String:
	match stat_name:
		"Intellect":
			return "more focused"
		"Aesthetic":
			return "more expressive"
		"Health":
			return "healthier"
		"Volatility":
			return "calmer under pressure"
		"Affect":
			return "in better spirits"
		"Nature":
			return "more open with others"
	return "more balanced"

func _negative_phrase(stat_name: String) -> String:
	match stat_name:
		"Intellect":
			return "more scattered"
		"Aesthetic":
			return "less focused on appearance"
		"Health":
			return "more worn down"
		"Volatility":
			return "more reactive"
		"Affect":
			return "in a lower mood"
		"Nature":
			return "more withdrawn"
	return "more unsettled"

func _queue_free_header() -> void:
	_ensure_header()
	if _header and is_instance_valid(_header) and _header.has_method("clear_subject_info"):
		_header.clear_subject_info()

func _ensure_header() -> void:
	if _header and is_instance_valid(_header):
		return
	_header = _get_header()

func _schedule_restart_prompt() -> void:
	await get_tree().create_timer(5.0).timeout
	if _feed and _feed.has_method("post_message"):
		_feed.post_message(RESTART_MESSAGE)
		await get_tree().create_timer(0.6).timeout
		_feed.post_message(RESTART_DEPARTMENT_MESSAGE)
	if _feed and _feed.has_method("show_department_cards"):
		_feed.show_department_cards()

func _apply_morality_outcome(subject: SubjectResource, winning_department: String, outcome_result: String) -> void:
	if subject == null:
		return
	var winner_is_angel: bool = winning_department.to_lower() == "angel"
	var is_right: bool = outcome_result == "Great" or outcome_result == "Good"
	var winner_delta: int = 2 if is_right else -2
	var loser_delta: int = -2 if is_right else 2
	if winner_is_angel:
		subject.AngelMorality = clampi(subject.AngelMorality + winner_delta, 0, 15)
		subject.DevilMorality = clampi(subject.DevilMorality + loser_delta, 0, 15)
	else:
		subject.DevilMorality = clampi(subject.DevilMorality + winner_delta, 0, 15)
		subject.AngelMorality = clampi(subject.AngelMorality + loser_delta, 0, 15)

func _format_department_label(department: String) -> String:
	var dept: String = department.strip_edges().capitalize()
	if dept == "":
		return "The Department"
	return "The %s Department" % dept

func _with_sentence_end(text: String) -> String:
	var out: String = text.strip_edges()
	if out == "":
		return ""
	if out.ends_with(".") or out.ends_with("!") or out.ends_with("?"):
		return out
	return "%s." % out
