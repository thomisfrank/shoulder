extends PanelContainer

signal department_chosen(department: String)

const DEPARTMENT_ANGEL := "Angel"
const DEPARTMENT_DEVIL := "Devil"

@export var department: String = DEPARTMENT_ANGEL

@onready var angel_container: Control = $Angel
@onready var devil_container: Control = $Devil
@onready var button: Button = $Button
@onready var scrim: Control = $scrim

func _ready() -> void:
	_apply_department()
	if button:
		if not button.pressed.is_connected(_on_button_pressed):
			button.pressed.connect(_on_button_pressed)
		if not button.mouse_entered.is_connected(_on_button_mouse_entered):
			button.mouse_entered.connect(_on_button_mouse_entered)
		if not button.mouse_exited.is_connected(_on_button_mouse_exited):
			button.mouse_exited.connect(_on_button_mouse_exited)

func set_department(value: String) -> void:
	department = value
	if is_inside_tree():
		_apply_department()

func get_department() -> String:
	return department

func set_dimmed(dimmed: bool) -> void:
	var alpha := 0.1 if dimmed else 1.0
	self_modulate.a = alpha
	if scrim:
		scrim.visible = dimmed

func _apply_department() -> void:
	var is_angel := department == DEPARTMENT_ANGEL
	if angel_container:
		angel_container.visible = is_angel
	if devil_container:
		devil_container.visible = not is_angel

func _on_button_pressed() -> void:
	emit_signal("department_chosen", department)

func _on_button_mouse_entered() -> void:
	scale = Vector2(1.05, 1.05)

func _on_button_mouse_exited() -> void:
	scale = Vector2(1, 1)

func set_interactive(enabled: bool) -> void:
	if button:
		button.disabled = not enabled
		button.mouse_filter = Control.MOUSE_FILTER_STOP if enabled else Control.MOUSE_FILTER_IGNORE
