extends Button


func _ready():
	pass

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta

func _on_ButtonPlay3B_pressed():
	Global.curRun.addTime(timeElapsed)
	Global.curRun.runNo = 0
	Global.run = 0
	Global.set = 1
	Global.recorder.goToSet(1)
	get_tree().change_scene("res://Title6.tscn") # Replace with function body.
