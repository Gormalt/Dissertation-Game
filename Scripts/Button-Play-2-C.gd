extends Button


func _ready():
	pass

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta

func _on_ButtonPlay2C_pressed():
	Global.vers = 2
	Global.curRun.version = 'p'
	Global.curRun.addTime(timeElapsed)
	get_tree().change_scene("res://ScenesForGameLevels/ControlLevelPozForcedChoice.tscn")
