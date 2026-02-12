extends Control

const MESSAGE_ITEM = preload("res://scripts/resources/JobMessagesPool.tres") 
const DATE_BADGE_SCENE = preload("res://scenes/date_badge.tscn")
const MESSAGE = preload("res://scenes/message_box.tscn")
const ACTIVITIES = preload("res://scenes/leisure_activities.tscn")
const ACTIVITY_ITEM = preload("res://scripts/resources/ActivitiesMessages.tres")
const COST_ITEM = preload("res://scripts/resources/CostMessagesPool.tres")
const DEPARTMENT_CARD_SCENE = preload("res://scenes/department_card.tscn")
const MILESTONE_SCENE = preload("res://scenes/milestone.tscn")
const MESSAGE_FEED_GAP_MIN := 48.0
const MESSAGE_FEED_GAP_MAX := 250.0
const COST_STATS := ["Intellect", "Aesthetic", "Health", "Volatility", "Affect"]
const BUTTON_MESSAGE_DELAY := 0.3
const MILESTONE_CHANCE := 0.4
const ANGEL_CARD_BG := Color(0.98039216, 0.98039216, 0.98039216, 1)
const DEVIL_CARD_BG := Color(1, 0.6431373, 0.9529412, 1)

@export var job_messages_resource: JobMessagesPool
@export var cost_messages_resource: CostMessagesPool
@export var subject_info: SubjectResource
@export var feed_height_min := 1725.0
@export var feed_height_max := 1870.0
@onready var message_feed_scrolling := $MessageFeedScrolling
@onready var message_feed := $MessageFeedScrolling/MessageFeed
@onready var message_box = $MessageFeedScrolling/MessageFeed #where messages instantiate
@onready var department_cards := $"MessageFeedScrolling/Department Cards"
@onready var loading_panel := $MessageFeedScrolling/MessageFeed/loading

signal department_selected(department: String)

var rng := RandomNumberGenerator.new()
var month_days := [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var _milestone_pending := false
func _ready() -> void:
	rng.randomize()
	if job_messages_resource == null:
		job_messages_resource = MESSAGE_ITEM
	if cost_messages_resource == null:
		cost_messages_resource = COST_ITEM

	var main := get_tree().current_scene
	if main and main.has_signal("next_day_pressed") and not main.is_connected("next_day_pressed", next_day_pressed):
		main.connect("next_day_pressed", next_day_pressed)

func _on_leisure_physical() -> void:
	activity_pressed("Physical")

func _on_leisure_creative() -> void:
	activity_pressed("Creative")

func _on_leisure_cognitive() -> void:
	activity_pressed("Cognitive")

func _on_leisure_media() -> void:
	activity_pressed("Media")

func _on_leisure_relaxation() -> void:
	activity_pressed("Relaxation")

func random_month_day() -> Dictionary:
	var month_names := ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
	var month := rng.randi_range(1, 12)
	var day := rng.randi_range(1, month_days[month - 1])
	return {"month": month, "day": day, "month_name": month_names[month - 1]}

	
var current_date := random_month_day()

func next_day_pressed() -> void:
	await get_tree().create_timer(BUTTON_MESSAGE_DELAY).timeout
	message_feed.show()
	_advance_date()
	_add_date_badge()
	message_box.show()
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if job_messages_resource and subject_info and subject_info.Job != "":
		message_label.text = job_messages_resource.get_message(subject_info)
	else:
		message_label.text = ""
	_play_new_message_sound()
	scroll_to_bottom()
	if subject_info and subject_info.Ailment != "":
		_post_ailment_message(subject_info.Ailment, true)
	await get_tree().create_timer(1.5).timeout
	_post_cost_message()
	scroll_to_bottom()
	_maybe_trigger_job_milestone()

func scroll_to_bottom() -> void:
	await get_tree().process_frame
	var scrollbar = message_feed_scrolling.get_v_scroll_bar()
	scrollbar.value = scrollbar.max_value


func _add_date_badge() -> void:
	var badge = DATE_BADGE_SCENE.instantiate()
	badge.text = "%s %d" % [current_date["month_name"], current_date["day"]]
	message_box.add_child(badge)

func _advance_date() -> void:
	current_date["day"] += 1
	if current_date["day"] > month_days[current_date["month"] - 1]:
		current_date["day"] = 1
		current_date["month"] += 1
		if current_date["month"] > 12:
			current_date["month"] = 1
	var month_names := ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
	current_date["month_name"] = month_names[current_date["month"] - 1]


func activity_pressed(activity_type: String) -> void:
	await get_tree().create_timer(BUTTON_MESSAGE_DELAY).timeout
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if message_label and subject_info:
		message_label.text = ACTIVITY_ITEM.get_message(subject_info, activity_type)
	_play_new_message_sound()
	scroll_to_bottom()
	_maybe_trigger_milestone(activity_type)

func post_tired_message() -> void:
	await get_tree().create_timer(BUTTON_MESSAGE_DELAY).timeout
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if message_label:
		var subject_name := subject_info.name if subject_info else "They"
		message_label.text = "%s is too tired to do anything else today." % subject_name
	_play_new_message_sound()
	scroll_to_bottom()

func _post_cost_message() -> void:
	if cost_messages_resource == null or subject_info == null:
		return
	var stat_name: String = COST_STATS.pick_random() as String
	var payload: Dictionary = cost_messages_resource.get_message(subject_info, stat_name) as Dictionary
	var message_text: String = payload.get("text", "") as String
	var cost_value: int = int(payload.get("cost", 0))
	if message_text == "":
		return
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if message_label:
		message_label.text = "%s\nIt affected their %s." % [message_text, stat_name]
	_play_new_message_sound()
	scroll_to_bottom()
	var main := get_tree().current_scene
	if main and main.has_node("Header"):
		var header := main.get_node("Header")
		if header and header.has_method("apply_stat_cost"):
			var new_ailment: String = header.apply_stat_cost(stat_name, cost_value) as String
			if new_ailment != "":
				_post_ailment_message(new_ailment, false)
	var manager := get_node_or_null("/root/Gamemanager")
	if manager and manager.has_method("evaluate_run_state"):
		manager.evaluate_run_state(subject_info)

func _post_ailment_message(ailment: String, is_still_dealing: bool) -> void:
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if message_label:
		var subject_name := subject_info.name if subject_info else "They"
		if is_still_dealing:
			message_label.text = "%s is still dealing with %s." % [subject_name, ailment]
		else:
			message_label.text = "%s is now suffering from %s." % [subject_name, ailment]
	_play_new_message_sound()
	if not is_still_dealing:
		_play_ailment_sound()
	scroll_to_bottom()

func show_message_feed() -> void:
	message_feed.show()
	message_box.show()

func post_message(text: String) -> void:
	show_message_feed()
	var message_item = MESSAGE.instantiate()
	message_box.add_child(message_item)
	var message_label := message_item as RichTextLabel
	if message_label:
		message_label.text = text
	_play_new_message_sound()
	scroll_to_bottom()

func post_guidance_message(text: String, delay := 0.5) -> void:
	await get_tree().create_timer(delay).timeout
	post_message(text)

func set_subject(resource_in: SubjectResource) -> void:
	subject_info = resource_in

func show_department_cards() -> void:
	if department_cards == null:
		return
	if department_cards.get_parent() != message_box:
		department_cards.get_parent().remove_child(department_cards)
		message_box.add_child(department_cards)
	for child in department_cards.get_children():
		department_cards.remove_child(child)
		child.queue_free()
	if DEPARTMENT_CARD_SCENE:
		var angel_card := DEPARTMENT_CARD_SCENE.instantiate()
		var devil_card := DEPARTMENT_CARD_SCENE.instantiate()
		if angel_card.has_method("set_department"):
			angel_card.set_department("Angel")
		if devil_card.has_method("set_department"):
			devil_card.set_department("Devil")
		_apply_department_card_panel_style(angel_card, ANGEL_CARD_BG)
		_apply_department_card_panel_style(devil_card, DEVIL_CARD_BG)
		if angel_card.has_method("set_dimmed"):
			angel_card.set_dimmed(false)
		if devil_card.has_method("set_dimmed"):
			devil_card.set_dimmed(false)
		if angel_card.has_method("set_interactive"):
			angel_card.set_interactive(true)
		if devil_card.has_method("set_interactive"):
			devil_card.set_interactive(true)
		_connect_department_card(angel_card)
		_connect_department_card(devil_card)
		department_cards.add_child(angel_card)
		department_cards.add_child(devil_card)
	department_cards.visible = true
	_play_new_message_sound()
	scroll_to_bottom()

func _apply_department_card_panel_style(card: Node, color: Color) -> void:
	if card == null:
		return
	var panel_style := StyleBoxFlat.new()
	panel_style.bg_color = color
	panel_style.corner_radius_top_left = 80
	panel_style.corner_radius_top_right = 80
	panel_style.corner_radius_bottom_right = 80
	panel_style.corner_radius_bottom_left = 80
	card.set("theme_override_styles/panel", panel_style)

func _connect_department_card(card: Node) -> void:
	if card == null or not card.has_signal("department_chosen"):
		return
	if not card.is_connected("department_chosen", _on_department_chosen):
		card.connect("department_chosen", _on_department_chosen)

func _on_department_chosen(department: String) -> void:
	emit_signal("department_selected", department)
	for child in department_cards.get_children():
		if child.has_method("get_department") and child.has_method("set_dimmed"):
			var is_other: bool = child.get_department() != department
			child.set_dimmed(is_other)
		if child.has_method("set_interactive"):
			child.set_interactive(false)

func show_loading() -> void:
	if loading_panel == null:
		return
	if loading_panel.get_parent() != message_box:
		loading_panel.get_parent().remove_child(loading_panel)
		message_box.add_child(loading_panel)
	else:
		message_box.move_child(loading_panel, message_box.get_child_count() - 1)
	loading_panel.visible = true
	scroll_to_bottom()

func hide_loading() -> void:
	if loading_panel:
		loading_panel.visible = false

func _maybe_trigger_milestone(activity_type: String) -> void:
	if _milestone_pending:
		return
	if rng.randf() > MILESTONE_CHANCE:
		return
	_milestone_pending = true
	var main := get_tree().current_scene
	if main and main.has_node("Milestone"):
		var milestone := main.get_node("Milestone")
		if milestone and milestone.has_method("trigger"):
			milestone.trigger(activity_type)
	elif main and MILESTONE_SCENE:
		var milestone_instance := MILESTONE_SCENE.instantiate()
		milestone_instance.name = "Milestone"
		main.add_child(milestone_instance)
		if milestone_instance.has_method("trigger"):
			milestone_instance.trigger(activity_type)
	_milestone_pending = false

func _maybe_trigger_job_milestone() -> void:
	if _milestone_pending:
		return
	if rng.randf() > MILESTONE_CHANCE:
		return
	_milestone_pending = true
	var main := get_tree().current_scene
	if main and main.has_node("Milestone"):
		var milestone := main.get_node("Milestone")
		if milestone and milestone.has_method("trigger_job"):
			milestone.trigger_job()
	elif main and MILESTONE_SCENE:
		var milestone_instance := MILESTONE_SCENE.instantiate()
		milestone_instance.name = "Milestone"
		main.add_child(milestone_instance)
		if milestone_instance.has_method("trigger_job"):
			milestone_instance.trigger_job()
	_milestone_pending = false

func _play_new_message_sound() -> void:
	var sound := get_node_or_null("/root/Soundmanager")
	if sound and sound.has_method("play_new_message"):
		sound.play_new_message()

func _play_ailment_sound() -> void:
	var sound := get_node_or_null("/root/Soundmanager")
	if sound and sound.has_method("play_ailment"):
		sound.play_ailment()
