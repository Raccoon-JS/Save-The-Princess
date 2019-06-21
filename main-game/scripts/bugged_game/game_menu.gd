extends Node

var option = 0
var path = 0
onready var select = $lower/options/selection

var positions = [Vector2(0,0), Vector2(0,60), Vector2(0,130)]

func _ready():
	get_tree().paused = true
	$player.play("begin")
#	set_process(true)
	pass # Replace with function body.

func _input(event):
	
	if event.is_action_pressed("move_up") or event.is_action_pressed("ui_up"):
		option -= 1
		$lower/sound.play()
	elif event.is_action_pressed("move_down") or event.is_action_pressed("ui_down"):
		option += 1
		$lower/sound.play()
	elif event.is_action_pressed("ENTER"):
		$lower/sound.play()
		going_option(option)
	else:
		$lower/sound.stop()
	
	if option >= 3:
		option = 2
	elif option < 0:
		option = 0
	
	select.rect_position = positions[option]
	
	pass

#func _process(delta):
	#if delta:
	#	
#	pass

func going_option(op):
	
	match(op):
		0:
			path = 0
		1:
			path = 1
		2:
			path = 2
	
	$player.play("finish")
	pass

func _on_player_animation_finished(anim_name):
	if anim_name == "begin":
		get_tree().paused = false
		$cover.visible = false
		$bg_music.play()
	
	if anim_name == "finish":
		match(path):
			0:
				global.goto_scene("res://scenes/bugged_game/unfinished_game.tscn")
			1:
				global.goto_scene("res://scenes/bugged_game/game_about.tscn")
			2:
				global.goto_scene("res://scenes/beginning.tscn")
	pass # Replace with function body.

func _on_player_animation_started(anim_name):
	if anim_name == "finish":
		$cover.visible = true
		get_tree().paused = true
		$bg_music.stop()
	pass # Replace with function body.
