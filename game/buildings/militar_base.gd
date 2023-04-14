extends Node2D

enum TEAM {NEUTRAL, ENEMY, ALLY, PLAYER}

@export var team: TEAM : set = _set_team

@onready var color_rect = $ColorRect


func _ready():
	_set_team(team)


func _set_team(new_team: TEAM):
	team = new_team
	if not color_rect:
		return
		
	match team:
		TEAM.ALLY:
			color_rect.color = Color(0.1, 1.0, 0.1)
		TEAM.NEUTRAL:
			color_rect.color = Color(1.0, 1.0, 1.0)
		TEAM.ENEMY:
			color_rect.color = Color(1.0, 0.1, 0.1)
		TEAM.PLAYER:
			color_rect.color = Color(0.1, 0.1, 1.0)
