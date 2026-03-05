extends Area2D





func _on_body_entered(body: Node2D) -> void:
	print("You got a Coin!")
	queue_free()
