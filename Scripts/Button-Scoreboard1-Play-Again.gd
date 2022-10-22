extends Button


func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_request_completed(result, response_code, headers, body):
	Global.curRun = RunResult.new()
	Global.run = Global.run+1
	Global.curRun.runNo = Global.run
	print(body)
	move_on()

var timeElapsed = 0.0

func _process(delta: float) -> void:
	timeElapsed += delta

func _on_ButtonScoreboard1PlayAgain_pressed():
	Global.totalRuns = Global.totalRuns + 1;
	Global.sum = Global.RedCups + Global.sum;
	Global.curRun.addTime(timeElapsed)
	
	Global.recorder.addRun(Global.curRun)
	

	
	print(Global.recorder.getSetData(Global.set))
	Global.RedCups = 0
	print("Set")
	print(Global.set)
	if(Global.run == 8 || Global.run == 9 || Global.run >= 19):
		var body = "{body:" + "Username:" + Global.username + "Set:" + str(Global.set) + "Data:" + Global.recorder.getSetDataAll(Global.set) + "'}"
		# Convert data to json string:
		var query = {"name":"Test"}
		# Add 'Content-Type' header:
		var headers = ["Content-Type: application/json", "Username:" + Global.username, "Set:" + str(Global.set), "Data:" + Global.recorder.getSetDataAll(Global.set)]
		$HTTPRequest.request("https://eoxr8dm4madfrfv.m.pipedream.net", headers, false, HTTPClient.METHOD_POST, body)
		#make http request here
	else:
		Global.curRun = RunResult.new()
		Global.run = Global.run+1
		Global.curRun.runNo = Global.run
		move_on()
	
	#move_on()


func move_on():	
	if(Global.set == 0):
		
		if(Global.run % 9 == 0):
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
		if(Global.set == 5 && Global.run >= 10):
			get_tree().change_scene("res://Ending.tscn")
			return;
		if(Global.run >= 20):
			Global.set = Global.set + 1;
			Global.run = 0;
			if(Global.set == 4):
				Global.checkForPreference()
			Global.recorder.goToSet(Global.set)
			get_tree().change_scene("res://Break.tscn")
			return
			
		get_tree().change_scene("res://Title6.tscn") 
		
		
	# Replace with function body.
	#Here is where I would want to randomly send it to either Title2, 3, or 4 
	#each of them needing to be hit at least 3 times before then going to 
	#title 5


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	pass # Replace with function body.
