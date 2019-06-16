extends Node


func _ready():
	$player.play("opening")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_player_animation_finished(anim_name):
	if anim_name == "opening":
		$laughter.play()
		$player.play("surprise")
	if anim_name == "surprise":
		global.goto_scene("res://scenes/menu.tscn")
	pass # Replace with function body.
