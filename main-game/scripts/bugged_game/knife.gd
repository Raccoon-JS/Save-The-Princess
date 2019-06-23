extends Area2D

func _on_knife_body_entered(body):
	if body.name == "player":
		if global.fixed[0] == false:
			global.bugs_found[0] = true
			body.damaged()
		else:
			global.picked_up = true
			queue_free()
	pass # Replace with function body.
