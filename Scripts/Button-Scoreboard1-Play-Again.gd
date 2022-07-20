extends Button


func _ready():
	pass

func _on_ButtonScoreboard1PlayAgain_pressed():
	get_tree().change_scene("res://Title6.tscn") # Replace with function body.
	#Here is where I would want to randomly send it to either Title2, 3, or 4 
	#each of them needing to be hit at least 3 times before then going to 
	#title 5
