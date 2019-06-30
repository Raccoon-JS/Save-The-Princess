extends Node

var press_enter = false
var backward = false

func _ready():
	#$player.visible = true
	$introduction.visible = true
	$background/ABOUT/licenses.disabled = true
	$background/ABOUT/licenses.visible = false
	$background/ABOUT/opening_file_command.visible_characters = 0
	$background/ABOUT/description.set_visible_characters(0)
	pass

func _input(event):
	if press_enter:
		if event.is_action_pressed("ENTER"):
			$player.play("open")
			
	pass

func _on_player_animation_started(anim_name):
	if anim_name == "open":
		
		$introduction/open.play()
	if anim_name == "dissolve":
		$background_music.stop()
	pass # Replace with function body.

func _on_player_animation_finished(anim_name):
	if anim_name == "open":
		#$player.visible = false
		$introduction.queue_free()
		$introduction/open.queue_free()
		$background_music.play()
	if anim_name == "dissolve":
		global.goto_scene("res://scenes/beginning.tscn")
	if anim_name == "about_transit" and backward == false:
		$background/ABOUT/opening_file_command/command_text_speed.start()
	else:
		backward = false
		$background/ABOUT/opening_file_command/command_text_speed.stop()
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
	pass # Replace with function body.

func _on_start_pressed():
	$player.play("dissolve")
	pass # Replace with function body.

func _on_about_pressed():
	$player.play("about_transit")
	pass # Replace with function body.

func _on_return_pressed():
	backward = true
	$player.play_backwards("about_transit")
	$background/ABOUT/description/typing_speed.stop()
	$background/ABOUT/opening_file_command/command_text_speed.stop()
	$background/ABOUT/description.set_visible_characters(0)
	$background/ABOUT/opening_file_command.visible_characters = 0
	$background/ABOUT/description/sound.stop()
	$background/ABOUT/opening_file_command/sound.stop()
	pass # Replace with function body.

func _on_command_text_speed_timeout():
	$background/ABOUT/opening_file_command.visible_characters = $background/ABOUT/opening_file_command.visible_characters + 1
	if $background/ABOUT/opening_file_command.visible_characters < $background/ABOUT/opening_file_command.get_total_character_count():
		$background/ABOUT/opening_file_command/sound.play()
	else:
		$background/ABOUT/opening_file_command/sound.stop()
		$background/ABOUT/description/typing_speed.start()
	pass # Replace with function body.

func _on_about_description_typing_speed_timeout():
	$background/ABOUT/description.set_visible_characters($background/ABOUT/description.get_visible_characters() + 1)
	if $background/ABOUT/description.get_visible_characters() < $background/ABOUT/description.get_total_character_count():
		$background/ABOUT/description/sound.play()
	else:
		$background/ABOUT/licenses.disabled = false
		$background/ABOUT/licenses.visible = true
		$background/ABOUT/description/sound.stop()
	pass # Replace with function body.

func _on_licenses_pressed():
	global.goto_scene("res://scenes/licenses.tscn")
	pass # Replace with function body.
