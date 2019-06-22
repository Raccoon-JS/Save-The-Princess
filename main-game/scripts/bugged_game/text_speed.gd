extends RichTextLabel

func _ready():
	set_visible_characters(0)
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	if delta:
		set_visible_characters(get_visible_characters() + 1)
	pass
