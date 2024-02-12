# Kaspar Plaas
# 12.02.2024

extends Node

var mangija = "Kaspar Plaas"
var elud = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	print("Mängija nimi on ",mangija,"!")
	print("Teil on ",elud," elu!")
	print(len(mangija))
	print(elud+2)
	var random = RandomNumberGenerator.new()
	print(randi_range(0,19))
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
