extends Node

# DEFAULT
var default_white

# Glitch in the System Color Palette (https://www.color-hex.com/color-palette/73151)
var evil_red 
var dark_tor
var middle_tor
var cyber_tor

func _ready():
	default_white = Color("ffffff")
	
	evil_red = Color("de3d3d")
	dark_tor = Color("0d2527")
	middle_tor = Color("267368")
	cyber_tor = Color("00b1a0")
	pass