extends AudioStreamPlayer

export var fade_in_time = 0.5
export var fade_out_time = 0.5

var tween

func _ready():
	volume_db = -20.0
	tween = $tween

func _play_sound():
	if fade_in_time > 0.0:
		tween.interpolate_property(self, "volume_db",
		volume_db, 0.0, fade_in_time,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		tween.start()
	else:
		volume_db = 0.0
	play()

func _stop_sound():
	if fade_out_time > 0.0:
		tween.interpolate_property(self, "volume_db",
		volume_db, -20.0, fade_out_time,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		tween.start()
	else:
		volume_db = -20.0

func _process(delta):
	if playing and volume_db <= -20.0:
		stop()
