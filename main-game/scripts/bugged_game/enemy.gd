extends StaticBody2D

func _on_aura_area_entered(area):
	
	if global.fixed[1]:
		if area.name == "knife_throw":
			queue_free()
	else:
		if area.name == "knife_throw":
			global.bugs_found[1] = true
			get_parent().get_parent().get_parent().get_node("player").damaged()
	pass # Replace with function body.
