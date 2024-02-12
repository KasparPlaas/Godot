# Kaspar Plaas
# 12.02.2024

extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var mangija_elud = 100
	var arvuti_elud = 100
	
	while arvuti_elud >= 0:
		var random1 = RandomNumberGenerator.new()
		var random2 = RandomNumberGenerator.new()
		var p1_dmg = random1.randi_range(8,15)
		var p2_dmg = random2.randi_range(8,14)
		arvuti_elud -= p1_dmg
		mangija_elud -= p2_dmg
		print("Mängija löök: ",p1_dmg, " Vastase elud: ",arvuti_elud)
		print("Arvuti löök ",p2_dmg, " Teie elud: ", mangija_elud)
		if mangija_elud <= 0:
			print("Game over!")
			break
		if arvuti_elud <= 0:
			print("Teie võitsite!")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
