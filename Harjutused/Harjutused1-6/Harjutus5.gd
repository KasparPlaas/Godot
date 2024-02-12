# Kaspar Plaas
# 12.02.2024

extends Node

var tunnid = 60
var palk = 5
var tulemused = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Makstav tasu on: ",makstav_tasu(tunnid, palk))
	print("Keskmine tulemas: ",keskmine(tulemused))
	koik(tulemused)
	hindamine(tulemused)
func makstav_tasu(t,p):
	if t <= 40:
		var tasu = t*p
		return tasu
	else:
		var tasu = 40*p+(t-40)*1.5*t
		return tasu

func keskmine(t):
	var kokku = t.size()
	var liitmine = 0
	for liit in t:
		liitmine+=liit
	var kesk = liitmine/kokku
	return kesk

func koik(t):
	for i in t:
		print(i)
		
func hindamine(t):
	for i in t:
		if i >= 90:
			print(i,"p - 5")
		elif i >= 75:
			print(i,"p - 4")
		elif i >= 50:
			print(i,"p - 3")
		else:
			print(i,"p - 2")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
