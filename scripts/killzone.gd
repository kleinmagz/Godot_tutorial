extends Area2D
@onready var timer: Timer = $Timer

# body refers to the body that enters the area (only the player).
# so we can reference to the player using body
func _on_body_entered(body: Node2D) -> void:
	print("You Died!")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
