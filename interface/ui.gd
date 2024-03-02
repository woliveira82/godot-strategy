extends CanvasLayer

@onready var label := $Panel/Label


func show_information(info):
	label.text = info
