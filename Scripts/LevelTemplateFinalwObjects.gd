extends Spatial


func _ready():
	$LevelTimer.start()


func _on_LevelTimer_timeout():
	get_tree().change_scene("res://Scoreboard1.tscn")
