extends Node

var current_scene = null
var new_scene = null

var bugs_found = []
var fixed = []
var interrogating_bug

var health
var picked_up
var game_over

func _ready():
	health = 3
	picked_up = false
	game_over = false
	bugs_found = [false,false,false]
	fixed = [false, false, false]
	interrogating_bug = "none"
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	pass

func goto_scene(path):
	new_scene = ResourceLoader.load(path).instance()
	get_tree().get_root().add_child(new_scene)
	get_tree().set_current_scene(new_scene)
	current_scene.queue_free()
	current_scene = new_scene
	pass
	
func _input(event):
	if event.is_action_pressed("ESC"): # For debugging
		get_tree().quit()
	pass