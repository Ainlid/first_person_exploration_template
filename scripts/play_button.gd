extends Control

export var start_scene = "test"

func _play_game():
	fader._fade_start(start_scene)
