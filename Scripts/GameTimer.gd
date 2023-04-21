extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta
		set_text("Collect as much garbage as you can before time runs out: " + str(floor(15 - timeElapsed)))
