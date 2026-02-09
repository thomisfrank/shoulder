extends Control

@onready var feed := $VBoxContainer/Feed
@onready var leisure_activities := $VBoxContainer/BottomTray/LeisureActivities
@onready var header := $Header
@onready var bottom_tray := $VBoxContainer/BottomTray
@onready var message_feed_scrolling := $VBoxContainer/Feed/MessageFeedScrolling

const MESSAGE_FEED_HEIGHT_COLLAPSED := 1870.0
const MESSAGE_FEED_HEIGHT_EXPANDED := 1602.0
var message_feed_bottom_offset := 0.0

signal next_day_pressed

func _ready() -> void:
	message_feed_bottom_offset = message_feed_scrolling.offset_bottom
	if not leisure_activities.toggled.is_connected(_on_leisure_activities_toggled):
		leisure_activities.toggled.connect(_on_leisure_activities_toggled)
	_on_leisure_activities_toggled(leisure_activities.is_expanded())

func _on_next_day_pressed() -> void:
	emit_signal("next_day_pressed")

func _on_leisure_activities_toggled(expanded: bool) -> void:
	var target_height := MESSAGE_FEED_HEIGHT_EXPANDED if expanded else MESSAGE_FEED_HEIGHT_COLLAPSED
	_set_message_feed_height(target_height)

func _set_message_feed_height(height: float) -> void:
	message_feed_scrolling.custom_minimum_size.y = height
	message_feed_scrolling.offset_bottom = message_feed_bottom_offset
	message_feed_scrolling.offset_top = message_feed_bottom_offset - height
