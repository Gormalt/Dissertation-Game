extends Control


func _ready():
	$LabelUsername.text = str(Global.x)
	$LabelScore.text = str(Global.RedCups)
	Global.curRun.setScore(Global.RedCups)
	Global.curRun.setEffort(Global.RedCups)
	var list = Global.randNames()
	if(Global.vers == 0):
		$LabelUsername2.text = str(list[0].name)
		$LabelScore2.text = str(list[0].score)
		$LabelUsername3.text = str(list[1].name)
		$LabelScore3.text = str(list[1].name)
		$LabelUsername4.text = str(list[2].name)
		$LabelScore4.text = str(list[2].name)
	elif(Global.vers == 1):
		$LabelUsername2.text = str("")
		$LabelScore2.text = str("")
		$LabelUsername3.text = str("")
		$LabelScore3.text = str("")		
		$LabelUsername4.text = str("")
		$LabelScore4.text = str("")
