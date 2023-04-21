extends Spatial


func _ready():
	$LevelTimer.start()
	

func _on_LevelTimer_timeout():
	if(Global.set >= 3 && (Global.vers == 0 || Global.vers == 1)):
		get_tree().change_scene("res://Scoreboard2.tscn")
	elif(Global.vers == 0 || (Global.vers == 1)):
		get_tree().change_scene("res://Scoreboard1.tscn")
	else:
		get_tree().change_scene("res://ScoreBoardPos.tscn")
