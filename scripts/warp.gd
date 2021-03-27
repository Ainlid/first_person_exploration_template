extends Spatial

export(NodePath) var player_path
export(NodePath) var target_path

var timer

var player

func _ready():
	timer = $timer

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
