extends Button


func _ready():
	pass


func _on_ButtonPlay2B_pressed():
	Global.vers = 1
	Global.curRun.version = 'm'
	get_tree().change_scene("res://ScenesForGameLevels/FairLevelMozForcedChoice.tscn")# Replace with function body.
