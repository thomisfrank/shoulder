extends Node

const TAP_SOUND := preload("res://assets/sounds/tap.wav")
const NEW_MESSAGE_SOUND := preload("res://assets/sounds/new_message.wav")
const AILMENT_SOUND := preload("res://assets/sounds/ailment.wav")
const ANGEL_SOUND := preload("res://assets/sounds/angel.mp3")
const DEVIL_SOUND := preload("res://assets/sounds/devil.mp3")
const MILESTONE_SOUND := preload("res://assets/sounds/milestone.wav")
const TAP_COOLDOWN_MS := 80
const SFX_VOLUME_DB := -6.0
const TAP_VOLUME_DB := -2.0
const DEPARTMENT_VOLUME_DB := -10.0

var _tap_player: AudioStreamPlayer
var _message_player: AudioStreamPlayer
var _ailment_player: AudioStreamPlayer
var _department_player: AudioStreamPlayer
var _milestone_player: AudioStreamPlayer
var _last_tap_ms := -1000

func _ready() -> void:
	_tap_player = AudioStreamPlayer.new()
	_tap_player.stream = TAP_SOUND
	_tap_player.bus = "Master"
	_tap_player.volume_db = TAP_VOLUME_DB
	add_child(_tap_player)
	_message_player = AudioStreamPlayer.new()
	_message_player.stream = NEW_MESSAGE_SOUND
	_message_player.bus = "Master"
	_message_player.volume_db = SFX_VOLUME_DB
	add_child(_message_player)
	_ailment_player = AudioStreamPlayer.new()
	_ailment_player.stream = AILMENT_SOUND
	_ailment_player.bus = "Master"
	_ailment_player.volume_db = SFX_VOLUME_DB
	add_child(_ailment_player)
	_department_player = AudioStreamPlayer.new()
	_department_player.bus = "Master"
	_department_player.volume_db = DEPARTMENT_VOLUME_DB
	add_child(_department_player)
	_milestone_player = AudioStreamPlayer.new()
	_milestone_player.stream = MILESTONE_SOUND
	_milestone_player.bus = "Master"
	_milestone_player.volume_db = SFX_VOLUME_DB
	add_child(_milestone_player)
	_connect_buttons(get_tree().root)
	if not get_tree().node_added.is_connected(_on_node_added):
		get_tree().node_added.connect(_on_node_added)

func _play_tap() -> void:
	var now_ms := Time.get_ticks_msec()
	if now_ms - _last_tap_ms < TAP_COOLDOWN_MS:
		return
	_last_tap_ms = now_ms
	if _tap_player:
		_tap_player.play()

func _on_node_added(node: Node) -> void:
	_connect_buttons(node)

func _connect_buttons(root: Node) -> void:
	if root == null:
		return
	if root is BaseButton:
		var button := root as BaseButton
		if not button.pressed.is_connected(_on_button_pressed):
			button.pressed.connect(_on_button_pressed)
	for child in root.get_children():
		_connect_buttons(child)

func _on_button_pressed() -> void:
	_play_tap()

func play_new_message() -> void:
	if _message_player:
		_message_player.play()

func play_ailment() -> void:
	if _ailment_player:
		_ailment_player.play()

func play_department(department: String) -> void:
	if _department_player == null:
		return
	var dept_lower := department.to_lower()
	if dept_lower == "angel":
		_department_player.stream = ANGEL_SOUND
	elif dept_lower == "devil":
		_department_player.stream = DEVIL_SOUND
	else:
		return
	_department_player.play()

func play_milestone() -> void:
	if _milestone_player:
		_milestone_player.play()
