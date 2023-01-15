extends Node2D

const BALL_ORIGINAL_POSITION = Vector2(565, 350)

var playerScore : int = 0:
	get:
		return playerScore
	set(value):
		playerScore = value
		updateScoreLabels()

var enemyScore : int = 0:
	get:
		return enemyScore
	set(value):
		enemyScore = value
		updateScoreLabels()


func _on_outside_area_left_body_entered(body: Node2D) -> void:
	resetBall()
	enemyScore += 1


func _on_outside_area_right_body_entered(body: Node2D) -> void:
	resetBall()
	playerScore += 1


func resetBall() -> void:
	$ball.position = BALL_ORIGINAL_POSITION

func updateScoreLabels() -> void:
	$GUI/EnemyScoreLabel.text = str(enemyScore)
	$GUI/PlayerScoreLabel.text = str(playerScore)
