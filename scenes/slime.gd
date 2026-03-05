extends Node2D

const SPEED = 60

var direction = 1

@onready var raycast_left: RayCast2D = $"Raycast Left"
@onready var ray_cast_right: RayCast2D = $"RayCast Right"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
	if raycast_left.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta
