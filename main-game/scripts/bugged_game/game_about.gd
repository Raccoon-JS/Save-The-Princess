extends Node

var mode

func _ready():
	get_tree().paused = false
	mode = "none"
	$player.play("cover")
	pass # Replace with function body.

func _on_return_pressed():
	mode = "return"
	$player.play_backwards("cover")
	pass # Replace with function body.

func _on_control_pressed():
	mode = "control"
	$player.play_backwards("cover")
	pass # Replace with function body.


func _on_player_animation_finished(anim_name):
	if anim_name == "cover":
		$bg_music.play()
		if mode == "return":
			global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
		elif mode == "control":
			global.goto_scene("res://scenes/bugged_game/game_control.tscn")
	pass # Replace with function body.
