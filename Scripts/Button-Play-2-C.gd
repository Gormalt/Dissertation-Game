extends Button


func _ready():
	pass


func _on_ButtonPlay2C_pressed():
	Global.vers = 2
	Global.curRun.version = 'p'
	get_tree().change_scene("res://ScenesForGameLevels/ControlLevelPozForcedChoice.tscn")
