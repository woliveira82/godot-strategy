extends ColorRect

enum TEAM {NEUTRAL, ENEMY, ALLY, PLAYER}

@export var team: TEAM : set = _set_team

var build_name: String


func _ready():
	_set_team(team)


func _set_team(new_team: TEAM):
	team = new_team
	match team:
		TEAM.ALLY:
			color = Color(0.1, 1.0, 0.1)
			build_name = "Ally"
		TEAM.NEUTRAL:
			color = Color(1.0, 1.0, 1.0)
			build_name = "Neutral"
		TEAM.ENEMY:
			color = Color(1.0, 0.1, 0.1)
			build_name = "Enemy"
		TEAM.PLAYER:
			color = Color(0.1, 0.1, 1.0)
			build_name = "Player"


func _on_gui_input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and event.pressed:
			Signals.on_build_clicked.emit(self)
