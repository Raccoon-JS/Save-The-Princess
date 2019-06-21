extends Node

var default_color = Color(0.149,0.451,0.407843,1)

func _ready():
	$bugs/images/Ant_pic.modulate = default_color
	$bugs/images/Beetle_pic.modulate = default_color
	$bugs/images/Cricket_pic.modulate = default_color
	
	if global.bugs_found[0]:
		$bugs/images/Ant_pic.texture = load("res://images/glitched_head_transparent-2.png")
	else:
		$bugs/buttons/ANT.disabled = true
		$bugs/images/Ant_pic.texture = load("res://images/NoPicture.png")
	
	if global.bugs_found[1]:
		$bugs/images/Beetle_pic.texture = load("res://images/glitched_head_transparent-3.png")
	else:
		$bugs/buttons/BEETLE.disabled = true
		$bugs/images/Beetle_pic.texture = load("res://images/NoPicture.png")
	
	if global.bugs_found[2]:
		$bugs/images/Cricket_pic.texture = load("res://images/glitched_head_transparent-4.png")
	else:
		$bugs/buttons/CRICKET.disabled = true
		$bugs/images/Cricket_pic.texture = load("res://images/NoPicture.png")
	pass # Replace with function body.

func _on_return_pressed():
	global.goto_scene("res://scenes/beginning.tscn")
	pass # Replace with function body.

func _on_ANT_pressed():
	global.interrogating_bug = $bugs/buttons/ANT.name
	global.goto_scene("res://scenes/found_bugs/interrogation.tscn")
	pass # Replace with function body.

func _on_BEETLE_pressed():
	global.interrogating_bug = $bugs/buttons/BEETLE.name
	global.goto_scene("res://scenes/found_bugs/interrogation.tscn")
	pass # Replace with function body.

func _on_CRICKET_pressed():
	global.interrogating_bug = $bugs/buttons/CRICKET.name
	global.goto_scene("res://scenes/found_bugs/interrogation.tscn")
	pass # Replace with function body.
