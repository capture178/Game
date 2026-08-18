extends Area2D

func _on_body_entered(body: Node2D) -> void:
	# Check if the body entering has the 'take_damage' function
	if body.has_method("take_damage"):
		body.take_damage()
