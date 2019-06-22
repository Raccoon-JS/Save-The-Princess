extends Node

onready var bugs_name = $text_box/bugs_name
onready var bugs_line = $text_box/dialogue
onready var lines = $text_box/script
#onready var info = $options/info
#onready var options = $options/option_buttons

var list = []
#var responses = []

var background_change = ["res://images/background-transparent-1.png","res://images/background-transparent-2.png","res://images/background-transparent-3.png","res://images/background-transparent-4.png","res://images/background-transparent-5.png"]
var box_color = Color("0d2527")

func _ready():
	get_tree().paused = false
	lines.request_ready()
	randomize()
	$programming_bg.texture = load(background_change[int(rand_range(0,4))])
	$programming_bg.modulate = Color("267368")
	$text_box.color = box_color
	$options.color = box_color
	if global.interrogating_bug == "ANT":
		$picture.texture = load("res://images/glitched_head_transparent-2.png")
	elif global.interrogating_bug == "BEETLE":
		$picture.texture = load("res://images/glitched_head_transparent-3.png")
	elif global.interrogating_bug == "CRICKET":
		$picture.texture = load("res://images/glitched_head_transparent-4.png")
	else:
		$picture.texture = load("res://images/NoPicture.png")
	
	$picture.modulate = activate_color(global.interrogating_bug)
	write_component()
	pass # Replace with function body.

func _input(event):
	if event.is_action_pressed("left_click") or event.is_action_pressed("ENTER"):
		print("write")
		write_component()
	pass

func activate_color(b_name):
	if b_name == "none":
		return Color("267368")
	else:
		return Color("de3d3d")
	pass

func write(bug, line, option):
	list.push_front({"name":bug,"dialogue":line,"question":option})
	pass

#func write_responses(b_name,question,n_option,responses,b_reply, trust):
#	responses.push_front({"name":b_name,"question":question,"option":n_option,"response":repsonses,"bug's reply":b_reply,"trust":trust})
#	pass

func write_component():
	if list.empty():
		match(global.interrogating_bug):
			"ANT":
				global.fixed[0] = true
				global.goto_scene("res://scenes/beginning.tscn")
			"BEETLE":
				global.fixed[1] = true
				global.goto_scene("res://scenes/beginning.tscn")
			"CRICKET":
				global.fixed[2] = true
				global.goto_scene("res://scenes/beginning.tscn")
	else:
		bugs_name.clear()
		bugs_line.clear()
		bugs_name.add_text(list[list.size() - 1]["name"])
		
		# Is this is question?
		#if list[list.size() - 1]["question"]:
		#	print("question")
		#	bugs_line.add_text(list[list.size() - 1]["dialogue"])
		#else:
		bugs_line.add_text(list[list.size() - 1]["dialogue"])
		list.pop_back()
	pass