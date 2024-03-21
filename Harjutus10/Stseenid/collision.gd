extends Area2D

func _ready():
	pass

func _process(delta):
	var objs = get_overlapping_bodies()
	for obj in objs:
		if obj.name == "Player":
			print($"../Player".global_position)
			$"../Player".global_position.x
			$"../Player".global_position.y
			
