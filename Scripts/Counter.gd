extends Label

func _ready():
	text = String(Global.RedCups)


func _on_RedCup_RedCupCollected():
	Global.RedCups += 1
	_ready()
