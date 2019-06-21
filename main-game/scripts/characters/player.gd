extends KinematicBody2D

const SPEED = 150
var movedir = Vector2(0,0)
var action = "idle"

func _ready():
	$player.play("idle")
	set_physics_process(true)
	pass # Replace with function body.

func _physics_process(delta):
	if delta:
		controls_loop()
		movement_loop()
		spritedir_loop()
		
		if movedir != Vector2(0,0):
			anim_switch("move")
		else:
			anim_switch("idle")
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
	if $player.current_animation != new_ani:
		$player.play(new_ani)
	pass