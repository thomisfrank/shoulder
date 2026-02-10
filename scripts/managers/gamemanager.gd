extends Node

const INTRO_MESSAGE := "Hi! Wellcome to Virtue.App. Ready to guide some humans?"
const DEPARTMENT_MESSAGE := "Select a Department"
const ASSIGNING_MESSAGE := "Assigning you a new subject..."
const BUTTON_MESSAGE_DELAY := 0.3

var _main_scene: Node
var _feed: Node
var _header: Node
var _current_department := ""

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
	if _feed and _feed.has_method("post_message"):
		_feed.post_message(_format_subject_message(subject))
	await get_tree().create_timer(1.5).timeout
	if _main_scene and _main_scene.has_method("_on_next_day_pressed"):
		_main_scene._on_next_day_pressed()

func get_department() -> String:
	return _current_department

func _format_subject_message(subject: SubjectResource) -> String:
	var intellect_desc := _intellect_descriptor(subject.Intellect)
	var aesthetic_desc := _aesthetic_descriptor(subject.Aesthetic)
	var health_desc := _health_descriptor(subject.Health)
	var volatility_desc := _volatility_descriptor(subject.Volatility)
	var nature_desc := _nature_descriptor(subject.Nature)
	var affect_desc := _affect_descriptor(subject.Affect)
	var job_article := _article_for(subject.Job)
	var intellect_article := _article_for(intellect_desc)
	return "Your Subject is %s %s, They work as %s %s, They have %s %s intellect, they're %s, and %s. They are %s, and %s, and generally feeling %s." % [
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
		affect_desc
	]

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
	var first_char := text.strip_edges().left(1).to_lower()
	if first_char in ["a", "e", "i", "o", "u"]:
		return "an"
	return "a"
