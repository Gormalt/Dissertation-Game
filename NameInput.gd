extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	grab_focus()


func _on_LineEdit_text_entered(new_text):
	Global.username = new_text
