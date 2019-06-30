extends RichTextLabel


func _ready():
	
	set_visible_characters(0)
	pass # Replace with function body.

func _on_text_speed_timeout():
	set_visible_characters(get_visible_characters() + 1)
	if get_visible_characters() < get_total_character_count():
		$beep.play()
	else:
		get_parent().get_parent().press_enter = true
		$beep.stop()
	pass # Replace with function body.
