extends Node

onready var info = $description/informations
onready var bugs_name = $description/bugs_name
onready var problem = $description/problem
onready var profile_picture = $profile_pic

var number = 0
var list = []

func _ready():
	info.request_ready()
	documents(0)
	pass # Replace with function body.

func write(bug, p_description, picture):
	list.push_back({"name":bug,"problem":p_description,"profile_pic":picture})
	pass

func documents(number):
	bugs_name.clear()
	problem.clear()
	profile_picture.texture = load(list[number]["profile_pic"])
	bugs_name.add_text(list[number]["name"])
	problem.add_text(list[number]["problem"])
	pass

func _on_left_button_pressed():
	if number <= 0:
		number = 2
	else:
		number = number - 1
	
	documents(number)
	pass # Replace with function body.

func _on_right_button_pressed():
	if number >= 2:
		number = 0
	else:
		number = number + 1
	
	documents(number)
	pass # Replace with function body.

func _on_return_button_pressed():
	global.goto_scene("res://scenes/beginning.tscn")
	pass # Replace with function body.
