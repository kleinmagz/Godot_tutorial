extends Node2D

const SPEED = 30

var direction = 1
@onready var ray_cast_left: RayCast2D = $RayCast_left
@onready var ray_cast_right: RayCast2D = $RayCast_right
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
# Unlike _ready( ) which runs only once at the start of the game, _process() runs
# every frame. 

# delta is the amount of time that has gone by since the last frame.
# its variable depending on the frame rate. 
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
