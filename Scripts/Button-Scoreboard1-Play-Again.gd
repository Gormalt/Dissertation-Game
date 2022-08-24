extends Button


func _ready():
	pass

func _on_ButtonScoreboard1PlayAgain_pressed():
	
	Global.recorder.addRun(Global.curRun)
	
	Global.curRun = RunResult.new()
	Global.run = Global.run+1
	
	if(Global.set == 0):
		
		if(Global.run % 8 == 0):
			get_tree().change_scene("res://Title5.tscn")
			return
		
		var num = Global.getLimited()
		if(num == 0):
			get_tree().change_scene("res://Title2.tscn")
		elif(num == 1):
			get_tree().change_scene("res://Title3.tscn")
		else:
			get_tree().change_scene("res://Title4.tscn")
				
	elif(Global.set != 0):
		get_tree().change_scene("res://Title6.tscn") 
		
		
	Global.RedCups = 0	
	# Replace with function body.
	#Here is where I would want to randomly send it to either Title2, 3, or 4 
	#each of them needing to be hit at least 3 times before then going to 
	#title 5
