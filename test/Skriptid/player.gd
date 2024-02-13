extends CharacterBody2D


# Seaded

const KIIRUS = 500
const GRAVI = 20
const HYPPA = -500


func _physics_process(delta):
	liikumine()
	hyppamine()

	# Mängija liikumine
func liikumine():
	
	var vasak = Input.is_action_pressed("Vasak")
	var parem = Input.is_action_pressed("Parem")
	
	# Gravitatsioon
	velocity.y += 10
	
	if parem and not vasak:
		velocity.x = KIIRUS
		$Sprite.flip_h = false
	elif vasak and not parem:
		velocity.x = -KIIRUS
		$Sprite.flip_h = true
	else:
		velocity.x = 0
		
func hyppamine():
	var hyppamine = Input.is_action_pressed("hyppa")
	if is_on_floor() and hyppamine:
		velocity.y = HYPPA
	
	move_and_slide()
