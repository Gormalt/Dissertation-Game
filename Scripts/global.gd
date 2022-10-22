extends Node

var RedCups: int = 0

var y = rand_range(3500, 4500)

var x = str("Player" + str(round(y)))

var curRun = RunResult.new()
var vers = 0
var set = 0
var run = 1
var recorder = Recorder.new()
var repeat = 1
var username = ""
var highScore = 12;
var prefM = 0
var prefL = 0
var equalScore = 0
var sum = 1
var totalRuns = 1

func _ready():
	rng.randomize()
	
	#Got rid of SilentWolf Stuff
	#var config = {
	#	"api_key": "uxAI0FkAEt6rKuEHulg4y6aREr0rWFYp7ruFxuLy",
	#	"game_id": "DissertationGame",
	#	"game_version": "1.0.1",
	#	"log_level": 1
	#}

	#SilentWolf.configure(config)
		
var rng = RandomNumberGenerator.new()
		
func randomNum(low, high):
	var my_random_number = rng.randi_range(low, high)
	return my_random_number
	
func getLimited():
	var choiceList = Array()
	
	if(recorder.getVersionHistory("l") < (3 * repeat)):
		choiceList.append(0)
	if(recorder.getVersionHistory("m") < (3 * repeat)):
		choiceList.append(1)
	if(recorder.getVersionHistory("p") < (3 * repeat)):
		choiceList.append(2)
	
	var rand = randomNum(0, choiceList.size() - 1);
	
	return choiceList[rand]
	
func randNames():
	
	var namesList = Array()
	if(Global.set == 0 || Global.set == 1):
		namesList.append(BoardEntry.new(Global.username, Global.RedCups))
		for x in 20:
			namesList.append(BoardEntry.new("",""))
		return namesList
	
	namesList.append("Rhino2314")
	namesList.append("Salmon6123")
	namesList.append("Bear9827")
	namesList.append("Dog0421")
	namesList.append("Squid4129")
	namesList.append("Koala7562")
	namesList.append("Squid3289")
	namesList.append("Hippo1214")
	namesList.append("Cod1299")
	namesList.append("Panda1831")
	namesList.append("Cat4923")
	namesList.append("Mouse1819")
	namesList.append("Lion9289")
	namesList.append("Whale1291")
	namesList.append("Robin4122")
	namesList.append("Lark0198")
	namesList.append("Kangaroo7231")
	namesList.append("Dolphine9123")
#	namesList.append("Cricket0128")
	namesList.append("Chicken8812")
	
	namesList.shuffle()
	
	var dif = randomNum(0, 6)
	Global.highScore = 2 + (sum / totalRuns)
	var pref = 0
	if(curRun.version == 'm'):
		pref = prefM
	elif(curRun.version == 'l'):
		pref = prefL
	var playerPos = randomNum(0,5)
	if(Global.set == 5):
		pref = 0;
		prefM = 0;
		prefL = 0;

	var names = Array()
	for x in 19:
		names.append(BoardEntry.new(namesList[x], getScore(pref)))
	
	var index = 0
	for lod in range(0, names.size()):
		if (Global.RedCups < names[lod].score):
		#print(names[lod].score)
			index = lod + 1
			
	names.insert(index, BoardEntry.new(Global.username, Global.RedCups))
	return names

func getScore(pref):
	var dif = randomNum(0, 9) - 8
	if (dif < 0):
		dif = 0;
		
	var score = Global.highScore - dif - pref;

	
	Global.highScore = score + pref;
	if(score < 2):
		score = 2
	return score;

func checkForPreference():
	var numM = recorder.getVersionHistory("m")
	var numP = recorder.getVersionHistory("p")
	var numL = recorder.getVersionHistory("l")
	
	if(numM > numL && numM > numP):
		prefL = 2
		prefM = -2
	else:
		prefM = 2
		prefL = -2
