extends Control

const MESSAGE_ITEM = preload("res://scripts/resources/JobMessagesPool.tres") 
const DATE_BADGE_SCENE = preload("res://scenes/date_badge.tscn")
const MESSAGE = preload("res://scenes/message_box.tscn")
const MIN_MESSAGES = 1
const MAX_MESSAGES = 3
const MESSAGE_FEED_GAP_MIN := 48.0
const MESSAGE_FEED_GAP_MAX := 250.0

@export var job_messages_resource: JobMessagesPool
@export var subject_info: SubjectResource
@export var feed_height_min := 1725.0
@export var feed_height_max := 1870.0
@onready var message_feed_scrolling := $MessageFeedScrolling
@onready var message_feed := $MessageFeedScrolling/MessageFeed
@onready var department_feed = $DepartmentFeed
@onready var message_box = $MessageFeedScrolling/MessageFeed #where messages instantiate

var rng := RandomNumberGenerator.new()
var month_days := [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
func _ready() -> void:
	if job_messages_resource == null:
		job_messages_resource = MESSAGE_ITEM

	var generator := get_node_or_null("/root/SubjectGenerator")
	if generator:
		subject_info = generator.generate_subject()
	var main := get_tree().current_scene
	if main and not main.next_day_pressed.is_connected(next_day_pressed):
		main.next_day_pressed.connect(next_day_pressed)

func random_month_day() -> Dictionary:
	var month_names := ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
	var month := rng.randi_range(1, 12)
	var day := rng.randi_range(1, month_days[month - 1])
	return {"month": month, "day": day, "month_name": month_names[month - 1]}

	
var current_date := random_month_day()

func next_day_pressed() -> void:
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
	scroll_to_bottom()

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


