extends Button


func _ready():
	pass

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta

func _on_ButtonPlay2B_pressed():
	Global.vers = 1
	Global.curRun.version = 'm'
	Global.curRun.addTime(timeElapsed)
	get_tree().change_scene("res://ScenesForGameLevels/FairLevelMozForcedChoice.tscn")# Replace with function body.
