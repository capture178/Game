extends Area2D


const EXSAMPLE_LEVEL_SCENE = preload("res://Scenes/exsample_level_scene.tscn")

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		timer.start()
#
func _on_timer_timeout() -> void:
	# Switch the scene when the timer finishes
	get_tree().change_scene_to_packed(EXSAMPLE_LEVEL_SCENE)
	timer.stop()
