extends Node

func _on_menu_pressed():
	global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.
