extends Node

onready var down_text = $background/texts/too_dangerous
onready var up_text = $background/texts/princess_words

func _ready():
	get_tree().paused = false
	$player/Sprite.modulate = Color("267368")
	$characters/npc/wizard.modulate = Color("de3d3d")
	$characters/npc/princess.modulate = Color("de3d3d")
	set_process(true)
	pass

func _process(delta):
	if delta:
		#if hud.paused:
		#	get_tree().paused = hud.paused
		
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