extends Label

func _ready():
	text = "Cups Collected: " + String(Global.RedCups);


func _on_RedCup_RedCupCollected():
	Global.RedCups += 1
	set_text("Cups Collected: " + String(Global.RedCups))
	_ready()
