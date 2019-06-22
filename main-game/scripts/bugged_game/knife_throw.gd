extends Area2D

const speed = 20

func _ready():
	add_to_group("bullet")
	set_physics_process(true)
	pass

func _physics_process(delta):
	if delta:
		move_local_x(speed)
		
	pass

func _on_lifetime_timeout():
	queue_free()
	pass # Replace with function body.


func _on_knife_throw_area_entered(area):
	#print(area.group)
	if area.name == "aura" or area.is_in_group("obstacles"):
		queue_free()
	pass # Replace with function body.


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	if viewport:
		queue_free()
	pass # Replace with function body.
