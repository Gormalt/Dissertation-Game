extends Button


func _ready():
	pass


var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta

func _on_ButtonPlay3A_pressed():
	Global.curRun.addTime(timeElapsed)
	Global.repeat = Global.repeat + 1
	var num = Global.getLimited()
	if(num == 0):
		get_tree().change_scene("res://Title2.tscn")
	elif(num == 1):
		get_tree().change_scene("res://Title3.tscn")
	else:
		get_tree().change_scene("res://Title4.tscn")	
