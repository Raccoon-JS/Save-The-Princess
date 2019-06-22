extends Node

var mode = "none"

func _ready():
	get_tree().paused = false
	$player.play("up")
	pass

func _on_return_pressed():
	mode = "menu"
	$player.play_backwards("up")
	
	pass # Replace with function body.

func _on_start_pressed():
	mode = "game"
	$player.play_backwards("up")
	pass # Replace with function body.


func _on_player_animation_finished(anim_name):
	$bg_music.play()
	if anim_name == "up" and mode == "menu":
		global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
	
	if anim_name == "up" and mode == "game":
		global.goto_scene("res://scenes/bugged_game/unfinished_game.tscn")
	pass # Replace with function body.
