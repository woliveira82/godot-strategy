extends Sprite2D

var unit_name = "Unit name"


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			print("_input(event)")
			Signals.on_unit_clicked.emit(self)


func _on_area_2d_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			print("_input(event)")
			Signals.on_unit_clicked.emit(self)
