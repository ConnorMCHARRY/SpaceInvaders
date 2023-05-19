extends Control

export (int) var countdownMax
var currentTimer

func _ready():
	currentTimer = countdownMax
	GlobalVariables.enemyBulletInstanceCount = 0
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		$HUD/Countdown.text = str(currentTimer)
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("Game Over")
	GlobalVariables.bulletInstanceCount = 0
	get_tree().change_scene("res://Menu/Menu.tscn")

