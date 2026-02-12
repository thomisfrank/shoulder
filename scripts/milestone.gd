extends Control

const MILESTONE_DELAY := 1.0
const MILESTONE_CONTENT = preload("res://scripts/resources/MilestonePools.tres")
const ACTIVITY_TARGET = preload("res://scripts/resources/LeisureActivitiesPools.gd")
const JOB_TARGET = preload("res://scripts/resources/SubjectJobsPool.tres")

@onready var m_content = $Milestone_Guidance/Milestone/Frame/Milestone/Content
@onready var guidance_slot_1 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice
@onready var guidance_slot_2 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice2
@onready var guidance_slot_3 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice3



var _pending := false
var _activity_type := ""
var _current_milestone_id := ""

func _ready() -> void:
	_connect_guidance_buttons()
	visible = false
	

func trigger(activity_type: String) -> void:
	if _pending:
		return
	_pending = true
	_activity_type = activity_type
	await get_tree().create_timer(MILESTONE_DELAY).timeout
	display_milestone_content(_activity_type)
	_post_milestone_feed_message()
	visible = true
	_play_milestone_sound()
	_pending = false

func trigger_job() -> void:
	if _pending:
		return
	_pending = true
	await get_tree().create_timer(MILESTONE_DELAY).timeout
	display_job_milestone_content()
	_post_milestone_feed_message()
	visible = true
	_play_milestone_sound()
	_pending = false

func _play_milestone_sound() -> void:
	var sound := get_node_or_null("/root/Soundmanager")
	if sound and sound.has_method("play_milestone"):
		sound.play_milestone()	


func display_milestone_content(activity_type: String) -> void:
	if m_content == null:
		return
	var generator := get_node_or_null("/root/SubjectGenerator")
	var subject: SubjectResource = null
	if generator and generator.has_method("get_subject"):
		subject = generator.get_subject()
	if subject == null:
		m_content.text = ""
		_set_guidance_slots([])
		return
	_set_random_stat_target(activity_type)
	var payload := MILESTONE_CONTENT.get_activity_milestone_with_id(activity_type, subject)
	m_content.text = String(payload.get("text", ""))
	_current_milestone_id = String(payload.get("id", ""))
	_populate_guidance(_current_milestone_id)

func display_job_milestone_content() -> void:
	if m_content == null:
		return
	var generator := get_node_or_null("/root/SubjectGenerator")
	var subject: SubjectResource = null
	if generator and generator.has_method("get_subject"):
		subject = generator.get_subject()
	if subject == null:
		m_content.text = ""
		_set_guidance_slots([])
		return
	_set_random_job_stat_target()
	var payload := MILESTONE_CONTENT.get_job_milestone_with_id(subject)
	m_content.text = String(payload.get("text", ""))
	_current_milestone_id = String(payload.get("id", ""))
	_populate_guidance(_current_milestone_id)

func _connect_guidance_buttons() -> void:
	_connect_guidance_button(guidance_slot_1)
	_connect_guidance_button(guidance_slot_2)
	_connect_guidance_button(guidance_slot_3)

func _connect_guidance_button(button: Button) -> void:
	if button == null:
		return
	if not button.is_connected("pressed", _on_guidance_pressed):
		button.pressed.connect(_on_guidance_pressed.bind(button))

func _on_guidance_pressed(button: Button) -> void:
	if button == null:
		return
	var guidance_text := String(button.text).strip_edges()
	if guidance_text == "":
		return
	var subject := _get_current_subject()
	if subject == null:
		return
	var player_dept := _get_department().capitalize()
	var other_dept := _get_other_department()
	var other_text := ""
	var other_guidance := _get_guidance_for_department(_current_milestone_id, other_dept)
	if not other_guidance.is_empty():
		other_text = String(other_guidance.pick_random()).strip_edges()
	var manager := get_node_or_null("/root/Gamemanager")
	if manager and manager.has_method("handle_guidance_choice"):
		manager.handle_guidance_choice(
			subject,
			player_dept,
			guidance_text,
			other_dept,
			other_text,
			_current_milestone_id
		)
	visible = false
	queue_free()

func _populate_guidance(milestone_id: String) -> void:
	if milestone_id == "":
		_set_guidance_slots([])
		return
	var dept_lower := _get_department().to_lower()
	var guidance: Array = []
	if dept_lower == "devil":
		guidance = MILESTONE_CONTENT.devil_guidance_by_id.get(milestone_id, [])
	else:
		guidance = MILESTONE_CONTENT.angel_guidance_by_id.get(milestone_id, [])
	_set_guidance_slots(guidance)

func _set_guidance_slots(guidance: Array) -> void:
	var slots := [guidance_slot_1, guidance_slot_2, guidance_slot_3]
	for i in range(slots.size()):
		var slot = slots[i]
		if slot == null:
			continue
		if i < guidance.size():
			slot.text = String(guidance[i])
		else:
			slot.text = ""

func _get_department() -> String:
	var manager := get_node_or_null("/root/Gamemanager")
	if manager and manager.has_method("get_department"):
		return manager.get_department()
	return ""

func _get_other_department() -> String:
	var dept_lower := _get_department().to_lower()
	if dept_lower == "devil":
		return "Angel"
	return "Devil"

func _get_guidance_for_department(milestone_id: String, department: String) -> Array:
	if milestone_id == "":
		return []
	var dept_lower := department.to_lower()
	if dept_lower == "devil":
		return MILESTONE_CONTENT.devil_guidance_by_id.get(milestone_id, [])
	return MILESTONE_CONTENT.angel_guidance_by_id.get(milestone_id, [])

func _get_feed() -> Node:
	var main := get_tree().current_scene
	if main and main.has_node("MainContent/Feed"):
		return main.get_node("MainContent/Feed")
	return null

func _post_milestone_feed_message() -> void:
	var generator := get_node_or_null("/root/SubjectGenerator")
	if generator == null or not generator.has_method("get_subject"):
		return
	var subject: SubjectResource = generator.get_subject()
	if subject == null:
		return
	var milestone_text := ""
	if m_content:
		milestone_text = String(m_content.text).strip_edges()
	if milestone_text == "":
		return
	var feed := _get_feed()
	if feed and feed.has_method("post_guidance_message"):
		feed.post_guidance_message("%s triggered a milestone moment: %s" % [String(subject.name), milestone_text], 0.0)

func _set_random_stat_target(activity_type: String) -> void:
	var generator := get_node_or_null("/root/SubjectGenerator")
	var subject: SubjectResource = null
	if generator and generator.has_method("get_subject"):
		subject = generator.get_subject()
	if subject == null:
		return
	var activity_data: LeisureActivitiesPools = ACTIVITY_TARGET.new()
	var activity_stats: Array = activity_data.activity_stats.get(activity_type, [])
	if activity_stats.is_empty():
		return
	var target_stat := String(activity_stats.pick_random())
	if target_stat == "":
		return
	var hard_stats := ["Intellect", "Aesthetic", "Health"]
	var target_value := randi_range(0, 50)
	if hard_stats.has(target_stat):
		target_value = randi_range(0, 100)
	subject.set("target_activity", activity_type)
	subject.set("target_stat", target_stat)
	subject.set("target_value", target_value)

func _set_random_job_stat_target() -> void:
	var generator := get_node_or_null("/root/SubjectGenerator")
	var subject: SubjectResource = null
	if generator and generator.has_method("get_subject"):
		subject = generator.get_subject()
	if subject == null:
		return
	var target_job := String(subject.Job)
	var target_stat := String(JOB_TARGET.job_stat.get(target_job, ""))
	if target_stat == "":
		return
	var hard_stats := ["Intellect", "Aesthetic", "Health"]
	var target_value := randi_range(0, 50)
	if hard_stats.has(target_stat):
		target_value = randi_range(0, 100)
	subject.set("target_job", target_job)
	subject.set("target_stat", target_stat)
	subject.set("target_value", target_value)

func _get_current_subject() -> SubjectResource:
	var generator := get_node_or_null("/root/SubjectGenerator")
	if generator == null or not generator.has_method("get_subject"):
		return null
	return generator.get_subject()
