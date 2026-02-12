extends Control

@onready var feed := $MainContent/Feed
@onready var leisure_activities := $MainContent/BottomTray/LeisureActivities
@onready var header := $Header
@onready var bottom_tray := $MainContent/BottomTray
@onready var message_feed_scrolling := $MainContent/Feed/MessageFeedScrolling

const MESSAGE_FEED_HEIGHT_COLLAPSED := 1870.0
const MESSAGE_FEED_HEIGHT_EXPANDED := 1602.0
var message_feed_bottom_offset := 0.0

signal next_day_pressed

func _ready() -> void:
	message_feed_bottom_offset = message_feed_scrolling.offset_bottom
	if not leisure_activities.toggled.is_connected(_on_leisure_activities_toggled):
		leisure_activities.toggled.connect(_on_leisure_activities_toggled)
	if not leisure_activities.physical_pressed.is_connected(_on_leisure_activity_pressed):
		leisure_activities.physical_pressed.connect(_on_leisure_activity_pressed.bind("Physical"))
	if not leisure_activities.creative_pressed.is_connected(_on_leisure_activity_pressed):
		leisure_activities.creative_pressed.connect(_on_leisure_activity_pressed.bind("Creative"))
	if not leisure_activities.cognitive_pressed.is_connected(_on_leisure_activity_pressed):
		leisure_activities.cognitive_pressed.connect(_on_leisure_activity_pressed.bind("Cognitive"))
	if not leisure_activities.media_pressed.is_connected(_on_leisure_activity_pressed):
		leisure_activities.media_pressed.connect(_on_leisure_activity_pressed.bind("Media"))
	if not leisure_activities.relaxation_pressed.is_connected(_on_leisure_activity_pressed):
		leisure_activities.relaxation_pressed.connect(_on_leisure_activity_pressed.bind("Relaxation"))
	_on_leisure_activities_toggled(leisure_activities.is_expanded())

func _on_next_day_pressed() -> void:
	var manager := get_node_or_null("/root/Gamemanager")
	if manager and manager.has_method("is_run_active") and not manager.is_run_active():
		return
	emit_signal("next_day_pressed")
	if (header == null or not is_instance_valid(header)) and has_node("Header"):
		header = get_node("Header")
	if header:
		header.reset_energy()

func _on_leisure_activity_pressed(activity_type: String) -> void:
	var manager := get_node_or_null("/root/Gamemanager")
	if manager and manager.has_method("is_run_active") and not manager.is_run_active():
		return
	if (header == null or not is_instance_valid(header)) and has_node("Header"):
		header = get_node("Header")
	if header and header.try_consume_energy():
		feed.activity_pressed(activity_type)
	else:
		feed.post_tired_message()

func _on_leisure_activities_toggled(expanded: bool) -> void:
	var target_height := MESSAGE_FEED_HEIGHT_EXPANDED if expanded else MESSAGE_FEED_HEIGHT_COLLAPSED
	_set_message_feed_height(target_height)

func _set_message_feed_height(height: float) -> void:
	message_feed_scrolling.custom_minimum_size.y = height
	message_feed_scrolling.offset_bottom = message_feed_bottom_offset
	message_feed_scrolling.offset_top = message_feed_bottom_offset - height
