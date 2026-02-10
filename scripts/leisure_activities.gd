extends VBoxContainer

signal toggled(expanded: bool)
signal physical_pressed()
signal creative_pressed()
signal cognitive_pressed()
signal media_pressed()
signal relaxation_pressed()


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



func _on_cognitive_button_pressed() -> void:
	emit_signal("cognitive_pressed")
	return


func _on_creative_button_pressed() -> void:
	emit_signal("creative_pressed")
	return


func _on_physical_button_pressed() -> void:
	emit_signal("physical_pressed")


func _on_relaxation_button_pressed() -> void:
	emit_signal("relaxation_pressed")
	return


func _on_media_button_pressed() -> void:
	emit_signal("media_pressed")
	return
