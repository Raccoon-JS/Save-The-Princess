extends Node

onready var pic = $picture
onready var char_name = $text_box/char_name
onready var dialogue = $text_box/text

var script = []

func _ready():
	$background.color = color.cyber_tor
	$text_box.color = color.dark_tor
	$text_box/name_box.color = color.middle_tor
	$text_box/char_name.add_color_override("default_color",color.cyber_tor)
	$text_box/text.add_color_override("default_color",color.cyber_tor)
	pass # Replace with function body.

func write(char_name,dialogue,pic_path):
	script.push_front({"name": char_name,"dialogue":dialogue,"pic_path":pic_path})
	pass

func write_component():
	char_name.clear()
	dialogue.clear()
	pic.texture = load(script[script.size() - 1]["pic_path"])
	pass