extends Area2D

<<<<<<< Updated upstream




func _on_body_entered(body: Node2D) -> void:
	print("You got a Coin!")
	queue_free()
=======
@onready var game_manager: Node = %"Game Manager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
>>>>>>> Stashed changes
