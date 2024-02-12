extends Node

var arvuti = 0
var mangija = 0
var arvuti_punktid = 0
var mangija_punktid = 0



# Called when the node enters the scene tree for the first time.

func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$taust/mangija_punktid.text = "PUNKTID: %s" %mangija_punktid
	$taust/arvuti_punktid.text = "PUNKTID: %s" %arvuti_punktid

func arvuti_valik():
	var vali = RandomNumberGenerator.new()
	var valik = vali.randi_range(1,3)
	arvuti = valik
	if mangija == arvuti:
		$taust/Tulemus.text = "Viik"
		
	
	if arvuti == 1:
		$taust/arvuti_vastus.text = "Kivi"
	elif arvuti == 2:
		$taust/arvuti_vastus.text = "Paber"
	else:
		$taust/arvuti_vastus.text = "Käärid"
	

func _on_uus_pressed():
	get_tree().reload_current_scene()
	
func _on_kivi_pressed():
	$taust/mangija_vastus.text = "Kivi"
	mangija = 1
	mang()
func _on_paber_pressed():
	$taust/mangija_vastus.text = "Paber"
	mangija = 2
	mang()
func _on_kaarid_pressed():
	$taust/mangija_vastus.text = "Käärid"
	mangija = 3
	mang()
	
func mang():
	arvuti_valik()
	if mangija == arvuti:
		$taust/Tulemus.text = "Viik"
		
	
	elif mangija == 1:
		if arvuti == 3:
			$taust/Tulemus.text = "Võitsid"
			mangija_punktid += 1
		
		else:
			$taust/Tulemus.text = "Kaotasid"
			arvuti_punktid += 1
			
	elif mangija == 2:
		if arvuti == 1:
			$taust/Tulemus.text = "Võitsid"
			mangija_punktid += 1
			
		else:
			$taust/Tulemus.text = "Kaotasid"
			arvuti_punktid += 1
			
	elif mangija == 2:
		$taust/Tulemus.text = "Võitsid"
		mangija_punktid += 1
		
	else:
		$taust/Tulemus.text = "Kaotasid"
		arvuti_punktid += 1
		
	if arvuti_punktid == 10:
		$taust/Tulemus.text = "Mäng läbi! Kaotasid!"
		get_tree().paused = true
	if mangija_punktid == 10:
		$taust/Tulemus.text = "Mäng läbi! Võitsid!"
		get_tree().paused = true
