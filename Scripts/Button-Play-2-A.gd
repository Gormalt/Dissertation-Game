extends Button


func _ready():
	pass


func _on_ButtonPlay2A_pressed():
	Global.vers = 0
	Global.curRun.version = 'l'
	get_tree().change_scene("res://ScenesForGameLevels/EqualLevelLozForcedChoice.tscn")
