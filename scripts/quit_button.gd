extends Button

@onready var timer := $timer as Timer


func _quit_pressed():
	fader._fade_out()
	timer.start()

func _quit_game():
	get_tree().quit()
