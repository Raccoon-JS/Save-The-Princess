extends Node

var music = AudioStreamPlayer.new()

"""
Double Violin Concerto 1st Movement
Exzel Music Publishing (freemusicpublicdomain.com)
Licensed under Creative Commons: By Attribution 3.0
http://creativecommons.org/licenses/by/3.0/
"""

func _ready():
	set_process(true)
	pass

func set_up_music(stream):
	music.stream = load(stream)
	pass

func play_music_1():
	# Subdue by Joshua McLean
	set_up_music("res://sounds/Double Violin Concerto 1st Movement - J.S. Bach.wav")
	#music.volume_db = 10
	music.play()
	pass
	
func _process(delta):
	if delta:
		if !music.playing:
			music.play()
	pass