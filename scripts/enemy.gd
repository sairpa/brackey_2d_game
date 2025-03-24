extends Node2D

const enemy_speed = 100
var direction = 1


@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		#print("Left hit detected!")
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
		#print("Right hit detected!")
		
	position.x += direction * enemy_speed * delta
	
