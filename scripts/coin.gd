extends Area2D

#We need to identify only when our player enters through the Coin surface


func _on_body_entered(body: Node2D) -> void:
	print("+1 score")
	queue_free()
