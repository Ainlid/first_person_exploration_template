extends Control

export(String, MULTILINE) var message = "sample text"
export var fade_in_time = 0.25
export var fade_out_time = 0.25

var tween
var label

func _ready():
	tween = $tween
	label = $label
	label.text = message
	label.modulate = Color(0.0, 0.0, 0.0, 0.0)

func _hide_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color(0.0, 0.0, 0.0, 0.0), fade_out_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _show_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color.white, fade_in_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
