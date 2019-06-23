extends KinematicBody2D

const SPEED = 150
var movedir = Vector2(0,0)
var action = "idle"
var knife = preload("res://scenes/bugged_game/knife_throw.tscn")
var look

#var picked_up = false

func _ready():
	$animation.play("idle")
	set_process(true)
	set_physics_process(true)
	pass # Replace with function body.

func _input(event):
	if global.picked_up:
		if event.is_action_pressed("ENTER") or event.is_action_pressed("left_click"):
			if global.fixed[0]:
				$sound.play()
				#get_parent().get_node("camera/hud/item_hold/knife").visible = true
				shooting()
	pass

func damaged():
	global.health -= 1
	$sound.play()
	get_parent().get_node("camera/hud/health").value = global.health
	pass

func _process(delta):
	if delta:
		look = get_global_mouse_position() - global_position
	pass

func _physics_process(delta):
	if delta:
		if global.health <= 0:
			global.game_over = true
		
		controls_loop()
		movement_loop()
		spritedir_loop()
		
		if movedir != Vector2(0,0):
			anim_switch("move")
		else:
			anim_switch("idle")
	pass

func shooting():
	fire_knife(global_position,rad2deg(atan2(look.y,look.x)))
	pass

func fire_knife(start_pos, degree):
	var k = knife.instance()
	get_parent().add_child(k)
	k.rotation_degrees = degree
	k.position = start_pos
	pass

func controls_loop():
	var LEFT = Input.is_action_pressed("ui_left") or Input.is_action_pressed("move_left")
	var RIGHT = Input.is_action_pressed("ui_right") or Input.is_action_pressed("move_right")
	var UP = Input.is_action_pressed("ui_up") or Input.is_action_pressed("move_up")
	var DOWN = Input.is_action_pressed("ui_down") or Input.is_action_pressed("move_down")
	
	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)
	pass

func movement_loop():
	var motion = movedir.normalized() * SPEED
	motion = move_and_slide(motion, Vector2(0,0))
	pass

func spritedir_loop():
	if movedir != Vector2(0,0):
		action = "move"
	else:
		action = "idle"
	pass

func anim_switch(animation):
	var new_ani = animation
	if $animation.current_animation != new_ani:
		$animation.play(new_ani)
	pass

func _on_sound_finished():
	$sound.stop()
	pass # Replace with function body.
