extends Node

onready var intro = get_parent().get_parent()

func _ready():
	intro.write("Protagonist","","res://images/cousin-protagonist-transparent.png")
	pass # Replace with function body.
