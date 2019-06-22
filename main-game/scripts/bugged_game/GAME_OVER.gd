extends Node

func _on_start_over_pressed():
	global.game_over = false
	global.health = 3
	global.goto_scene("res://scenes/bugged_game/unfinished_game.tscn")
	pass # Replace with function body.

func _on_menu_pressed():
	global.game_over = false
	global.health = 3
	global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
	pass # Replace with function body.
