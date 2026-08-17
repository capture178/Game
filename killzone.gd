extends Area2D

var lives: int = 3

func _on_body_entered(body: Node2D) -> void:
	lives -= 1
	if lives <= 0:
		lives = 3
		get_tree().reload_current_scene()
