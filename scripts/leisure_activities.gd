extends VBoxContainer

signal toggled(expanded: bool)

@onready var Body: PanelContainer = $Body

func is_expanded() -> bool:
	return Body.visible

func _body_hiding() -> void:
	Body.visible = false
	return 


func _on_caret_button_pressed() -> void:
	if Body.visible:
		_body_hiding()
	elif Body.visible == false:
		Body.visible = true
	emit_signal("toggled", Body.visible)
	return
