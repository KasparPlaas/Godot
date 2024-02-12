extends Node
var dmg_rand = RandomNumberGenerator.new()

var vaenlase_elud = 100
var salv = 5
var skoor = 0
var lasud = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
			# Seaded
	
	if Input.is_action_just_pressed("laadimine"):
		laadimine()
	if Input.is_action_just_released("tulistamine"):
		tulistamine()
	$taustapilt/ammo.text = "Ammo: %s" %salv
	$taustapilt/elud.text = "Life: %s" %vaenlase_elud
	$taustapilt/score.text = "Score: %s" %skoor
func tulistamine():
	
	var pihtas = bool(randi() % 2)
	var dmg = dmg_rand.randi_range(8,12)
	
	
	if salv >= 1:
		$taustapilt/piu.text = "Piu Piu"
		
		salv -= 1
		lasud += 1
		print("Salves: ",salv)
		if pihtas==true:
			vaenlase_elud -= dmg
			skoor += 1
		else:
			print("Möödas -0 elud: ",vaenlase_elud)
		
		if vaenlase_elud <= 0:
			labi()
		print("--------")
		
	else:
		$taustapilt/reload.text = "         RELOAD! \nPress 'R' to reload!"
		print("Salv tühi!  Vajuta 'R' laadimiseks! ")

func laadimine():
	$taustapilt/piu.text = "Laadimine"
	salv = 5
	print("Relv laetud!")
	print("Salves on: ",salv," padrunit!")

func labi():
	get_tree().paused = true
	$taustapilt/gameover.text = "GAME OVER"
	print("Punktid: ",skoor)
	print("Laskude arv: ",lasud)
	var efektiivsus = skoor/lasud
	print("Efektiivsus ",efektiivsus,"%")
	$taustapilt/quit.text = "To quit press 'ESC'!"
			
