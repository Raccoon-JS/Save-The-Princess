extends Node

onready var down_text = $background/texts/too_dangerous
onready var up_text = $background/texts/princess_words

func _ready():
	
	get_tree().paused = false
	
	$tiles/indoor_ob/upper.add_to_group("obstacles")
	$tiles/indoor_ob/under.add_to_group("obstacles")
	$tiles/outdoor_ob/left.add_to_group("obstacles")
	$tiles/outdoor_ob/right.add_to_group("obstacles")
	$tiles/outdoor_ob/tree_1.add_to_group("obstacles")
	$tiles/outdoor_ob/tree_2.add_to_group("obstacles")
	$tiles/outdoor_ob/tree_3.add_to_group("obstacles")
	
	$player/Sprite.modulate = Color("267368")
	$characters/npc/wizard.modulate = Color("de3d3d")
	$characters/npc/princess.modulate = Color("de3d3d")
	
	if global.fixed[2]:
		$background/texts/princess_words.add_text("My knight! Thank Goodness you came to rescue me!")
		$characters/npc/princess/Sprite.texture = preload("res://images/princess-glitch-transparent.png")
	else:
		$background/texts/princess_words.add_text("The knight! Thank goodness. I am afraid to tell you that the princess is in another castle.")
		$characters/npc/princess/Sprite.texture = preload("res://images/beautiful-princess-transparent.png")
	set_process(true)
	pass

func _process(delta):
	if delta:
		#if hud.paused:
		#	get_tree().paused = hud.paused
		
		if global.game_over:
			global.goto_scene("res://scenes/bugged_game/GAME_OVER.tscn")
		
		if $camera.position.y >= 800 or $camera.position.y <= -800:
			$background/texts/timer.start()
			$player/Sprite.modulate = Color("00b1a0")
			$characters/npc/wizard/movement.play("idle_move")
			fire_burning(true)
		else:
			down_text.visible_characters = 0
			up_text.visible_characters = 0
			$characters/npc/wizard/movement.stop()
			fire_burning(false)
			$player/Sprite.modulate = Color("267368")
	pass
"""
func _input(event):
	if event.is_action_pressed("ESC"):
		hud.paused = true
	pass
"""
func fire_burning(state):
	if state:
		$items/fire_1/burning_fire_sprite/animation.play("burning")
		$items/fire_2/burning_fire_sprite/animation.play("burning")
		$items/fire_3/burning_fire_sprite/animation.play("burning")
		$items/fire_4/burning_fire_sprite/animation.play("burning")
		$items/fire_5/burning_fire_sprite/animation.play("burning")
		$items/fire_6/burning_fire_sprite/animation.play("burning")
	else:
		$items/fire_1/burning_fire_sprite/animation.stop()
		$items/fire_2/burning_fire_sprite/animation.stop()
		$items/fire_3/burning_fire_sprite/animation.stop()
		$items/fire_4/burning_fire_sprite/animation.stop()
		$items/fire_5/burning_fire_sprite/animation.stop()
		$items/fire_6/burning_fire_sprite/animation.stop()
	pass

func _on_princess_body_entered(body):
	if body.name == "player":
		if global.fixed[2]:
			global.goto_scene("res://scenes/bugged_game/ThankYou.tscn")
		else:
			global.bugs_found[2] = true
			$player.damaged()
	pass # Replace with function body.


func _on_knife_body_entered(body):
	if body.name == "player":
		if global.fixed[0]:
			$camera/hud/item_hold/knife.visible = true
	pass # Replace with function body.
