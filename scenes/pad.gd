extends CharacterBody2D


const SPEED = 350.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("up", "down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
