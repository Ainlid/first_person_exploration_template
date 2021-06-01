extends Area3D

@export var one_shot := false
var active := true

signal player_entered
signal player_exited

func _body_entered(body):
	if body.is_in_group("player") and active:
		emit_signal("player_entered")
		if one_shot:
			active = false

func _body_exited(body):
	if body.is_in_group("player") and active:
		emit_signal("player_exited")
		if one_shot:
			active = false
