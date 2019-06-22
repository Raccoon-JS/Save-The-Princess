extends CanvasLayer

var paused = false

func _ready():
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("ESC"):
		paused = !paused
		get_tree().paused = paused
		$pause_menu.visible = !$pause_menu.visible
		
	
	if paused:
		if Input.is_key_pressed(KEY_1):
			global.goto_scene("res://scenes/bugged_game/game_menu.tscn")
		if Input.is_key_pressed(KEY_2):
			global.goto_scene("res://scenes/beginning.tscn")
	pass