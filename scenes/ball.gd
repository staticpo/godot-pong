extends CharacterBody2D
class_name Ball


const SPEED = 300

func _ready() -> void:
	randomize()
	restartBallVelocity()

func _physics_process(delta: float) -> void:
	var collisionObject = move_and_collide(velocity * SPEED * delta)
	if collisionObject:
		velocity = velocity.bounce(collisionObject.get_normal())

func restartBallVelocity() -> void:
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-0.8, 0.8][randi() % 2]
