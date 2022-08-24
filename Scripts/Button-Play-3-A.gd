extends Button


func _ready():
	pass


func _on_ButtonPlay3A_pressed():
	Global.set = 1
	Global.recorder.goToSet(1)
	get_tree().change_scene("res://Title6.tscn")
