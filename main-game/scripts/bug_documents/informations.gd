extends Node

onready var doc = get_parent().get_parent()

func _ready():
	if global.bugs_found[0] == true:
		doc.write("Ant","Ant has an issue with his roommate and he wants to get rid up him.","res://images/glitched_head_transparent-2.png")
	else:
		doc.write("Unkown (1/3)","That bug can be found in the cave","res://images/NoPicture.png")
	
	if global.bugs_found[1] == true:
		doc.write("Beetle","Beetle is afraid of surgeons. But she has an appointment tomorrow.","res://images/glitched_head_transparent-3.png")
	else:
		doc.write("Unkown (2/3)","That bug can be found in the middle of the battle.","res://images/NoPicture.png")
	if global.bugs_found[2] == true:
		doc.write("Cricket","Cricket caused some troubles in the middle of the street.","res://images/glitched_head_transparent-4.png")
	else:
		doc.write("Unkown (3/3)","That bug can be found at the end where the hero completes his goal.","res://images/NoPicture.png")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
