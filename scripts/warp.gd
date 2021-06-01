extends Node3D

@export_node_path(Node) var player_path
@export_node_path(Node) var target_path

@onready var timer := $timer as Timer

var player

func _warp_start():
	player = get_node(player_path)
	player.playable = false
	fader._fade_out()
	timer.start()

func _move_player():
	fader._fade_in()
	var target = get_node(target_path)
	player.global_transform = target.global_transform
	player.playable = true
