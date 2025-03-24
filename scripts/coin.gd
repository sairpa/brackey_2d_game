extends Area2D

#We need to identify only when our player enters through the Coin surface
@onready var game_manager: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	#queue_free()
	animation_player.play("dying")
