extends Node

func _ready():
	get_tree().paused = false
	pass # Replace with function body.

func _test_the_game():
	global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
	pass # Replace with function body.

func _notes_from_dev():
	global.goto_scene("res://scenes/devs_notes/bug_documents.tscn")
	pass # Replace with function body.

func _known_bugs():
	global.goto_scene("res://scenes/found_bugs/bugs_menu.tscn")
	pass # Replace with function body.
