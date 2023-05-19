extends Control

export (int) var countdownMax
var currentTimer

func _ready():
	set_process(true)
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
	
func _process(delta):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(10.0, 30.0)

