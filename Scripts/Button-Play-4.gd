extends Button


func _ready():
	pass

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta
		
func _on_ButtonPlay4_pressed():
	Global.run = 0;
	Global.curRun.runNo = 0
	Global.curRun.addTime(timeElapsed);
	get_tree().change_scene("res://Title6.tscn") # Replace with function body.
