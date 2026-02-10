extends Control

const MILESTONE_DELAY := 1.0
const MILESTONE_CONTENT = preload("res://scripts/resources/MilestonePools.tres")

@onready var m_content = $Milestone_Guidance/Milestone/Frame/Milestone/Content
@onready var guidance_slot_1 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice
@onready var guidance_slot_2 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice2
@onready var guidance_slot_3 = $Milestone_Guidance/Guidance/GuidanceChoices/GuidanceChoice3



var _pending := false
var _activity_type := ""
var _current_milestone_id := ""

func _ready() -> void:
	_connect_guidance_buttons()
	display_milestone_content()
	visible = false
	

func trigger(activity_type := "") -> void:
	if _pending:
		return
	_pending = true
	_activity_type = activity_type
	await get_tree().create_timer(MILESTONE_DELAY).timeout
	display_milestone_content(_activity_type)
	visible = true
	_play_milestone_sound()
	_pending = false

func _play_milestone_sound() -> void:
	var sound := get_node_or_null("/root/Soundmanager")
	if sound and sound.has_method("play_milestone"):
		sound.play_milestone()	


func display_milestone_content(activity_type := "") -> void:
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
	var payload: Dictionary
	if activity_type != "":
		payload = MILESTONE_CONTENT.get_activity_milestone_with_id(activity_type, subject)
	else:
		payload = MILESTONE_CONTENT.get_job_milestone_with_id(subject)
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
	var feed := _get_feed()
	if feed and feed.has_method("post_guidance_message"):
		feed.post_guidance_message("You suggested %s" % guidance_text, 0.5)
		var other_dept := _get_other_department()
		var other_guidance := _get_guidance_for_department(_current_milestone_id, other_dept)
		if not other_guidance.is_empty():
			var other_text := String(other_guidance.pick_random()).strip_edges()
			if other_text != "":
				feed.post_guidance_message("%s suggested %s" % [other_dept, other_text], 1.5)
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
