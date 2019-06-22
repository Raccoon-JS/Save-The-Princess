extends Camera2D

func _process(delta):
	if delta:
		var pos = get_node("../player").global_position - Vector2(0,16)
		var x = floor(pos.x/800) * 800
		var y = floor(pos.y/800) * 800
		global_position = Vector2(x,y)
	pass