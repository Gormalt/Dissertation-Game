extends Control


func _ready():
	$LabelUsername.text = str(Global.x)
	$LabelScore.text = str(Global.RedCups)
