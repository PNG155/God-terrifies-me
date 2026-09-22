extends CharacterBody2D


const SPEED = 200.0

func _physics_process(delta: float) -> void:
	
	var direction := Vector2(
		Input.get_axis("a", "d"),
		Input.get_axis("w", "s")
		).normalized()
	
	velocity = direction*SPEED

	move_and_slide()
