extends VBoxContainer

@onready var Body: PanelContainer = $Body

func _body_hiding() -> void:
	Body.visible = false
	return 


func _on_caret_button_pressed() -> void:
	if Body.visible:
		_body_hiding()
	elif Body.visible == false:
		Body.visible = true
	return
