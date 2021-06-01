extends Control

@export_multiline var message := "sample text"
@export var fade_in_time: float = 0.25
@export var fade_out_time: float = 0.25

@onready var tween := $tween as Tween
@onready var label := $label as Label

func _ready():
	label.text = message
	label.modulate = Color(0.0, 0.0, 0.0, 0.0)

func _hide_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color(0.0, 0.0, 0.0, 0.0), fade_out_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _show_text():
	tween.interpolate_property(label, "modulate",
	label.modulate, Color.WHITE, fade_in_time,
	Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
