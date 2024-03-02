extends Node

var selected_item = null

@onready var ui := $UI


func _ready():
	Signals.on_world_clicked.connect(_unselect)
	Signals.on_build_clicked.connect(_show_build_details)
	Signals.on_unit_clicked.connect(_show_unit_details)


func _unselect():
	var selected_item = null
	ui.show_information("")


func _show_build_details(build):
	var selected_item = build
	ui.show_information(build.build_name)


func _show_unit_details(unit):
	print("unit details")
	var selected_item = unit
	ui.show_information(unit.unit_name)
