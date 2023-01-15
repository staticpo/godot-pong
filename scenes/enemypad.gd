extends CharacterBody2D


const SPEED = 400
var ball : Ball

func _ready() -> void:
	ball = get_parent().get_node("ball")

func _physics_process(delta: float) -> void:
	velocity = Vector2(0, getEnemyDirection() * SPEED)
	move_and_slide()
	

func getEnemyDirection() -> int:
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
