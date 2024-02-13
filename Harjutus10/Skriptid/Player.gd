extends CharacterBody2D


const kiirus = 500
const hyppa = -500

func _physics_process(delta):
	liikumine()
	hyppamine()
	gravitatsioon()
	

func hyppamine():
	var hyppamine = Input.is_action_pressed("Hyppa")
	if is_on_floor() and hyppamine:
		$sprite.play("jump")
		velocity.y = hyppa
		
func gravitatsioon():
	velocity.y += 10

func liikumine():
	var parem = Input.is_action_pressed("Parem")
	var vasak = Input.is_action_pressed("Vasak")
	
	
	
	if parem and not vasak:
		velocity.x = kiirus
		$sprite.play("walk")
		$sprite.flip_h = false
		
		
	elif vasak and not parem:
		velocity.x = -kiirus
		$sprite.flip_h = true
		$sprite.play("walk")
	else:
		$sprite.play("idle")
		velocity.x = 0
		
		
		
	move_and_slide()
