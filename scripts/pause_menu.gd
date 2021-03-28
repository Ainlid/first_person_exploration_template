extends Node

var menu

func _ready():
	menu = $menu
	_unpause_game()

func _input(event):
	if event.is_action_pressed("escape"):
		if !get_tree().paused:
			_pause_game()
		else:
			_unpause_game()

func _pause_game():
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	menu.show()

func _unpause_game():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	menu.hide()

func _reload():
	_unpause_game()
	fader._reload_scene()

func _main_menu():
	_unpause_game()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	fader._fade_start("main_menu")
