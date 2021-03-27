extends Area

export var one_shot = false
var active = true

signal player_entered
signal player_exited

func _body_entered(var body):
	if body.is_in_group("player") and active:
		emit_signal("player_entered")
		if one_shot:
			active = false

func _body_exited(var body):
	if body.is_in_group("player") and active:
		emit_signal("player_exited")
		if one_shot:
			active = false
