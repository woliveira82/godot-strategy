extends Node2D


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			Signals.on_world_clicked.emit()
