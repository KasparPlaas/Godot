# 12.02.2024
# Kaspar Plaas

extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	# KAUP
	var raha = 100
	var toote_hind = 80
	if raha >= toote_hind:
		print("Teil on piisavalt raha, et toodet osta!")
	else:
		var puudu = toote_hind-raha
		print("Teil pole piisavalt raha, ", puudu, "€ jääb puudu!")
	
	# Kujund
	var a = 15
	var b = 15
	if a==b:
		print("Tegemist on ruuduga!")
	else:
		print("Tegemist on ristkülikuga!")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
