extends Button


func _ready():
	pass

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta

func _on_ButtonPlay2A_pressed():
	Global.vers = 0
	Global.curRun.version = 'l'
	Global.curRun.addTime(timeElapsed)
	get_tree().change_scene("res://ScenesForGameLevels/EqualLevelLozForcedChoice.tscn")
