extends Node

var RedCups: int = 0

var y = rand_range(3500, 4500)

var x = str("Player" + str(round(y)))

var curRun = RunResult.new()
var vers = 0
var set = 0
var run = 0
var recorder = Recorder.new()


func _ready():
	rng.randomize()
	var config = {
		"api_key": "uxAI0FkAEt6rKuEHulg4y6aREr0rWFYp7ruFxuLy",
		"game_id": "DissertationGame",
		"game_version": "1.0.1",
		"log_level": 1
	}

	SilentWolf.configure(config)
		
var rng = RandomNumberGenerator.new()
		
func randomNum(low, high):
	var my_random_number = rng.randi_range(low, high)
	return my_random_number
	
func getLimited():
	var choiceList = Array()
	if(recorder.getVersionHistory("l") < (3 * (floor(run+1/9) + 1))):
		choiceList.append(0)
	if(recorder.getVersionHistory("p") < (3 * (floor(run+1/9) + 1))):
		choiceList.append(1)
	if(recorder.getVersionHistory("m") < (3 * (floor(run+1/9) + 1))):
		choiceList.append(2)
	
	var rand = randomNum(0, choiceList.size());
	
	return choiceList[rand]
	
func randNames():
	var names = Array()
	names.append(BoardEntry.new("Rhino2314", 10, 10))
	names.append(BoardEntry.new("Salmon6123", 6, 6))
	names.append(BoardEntry.new("Bear9827", 13, 13))
	names.append(BoardEntry.new("Dog0421", 7, 7))
	names.append(BoardEntry.new("Squid4129", 11, 11))
	names.append(BoardEntry.new("Koala7562", 8, 8))
	names.append(BoardEntry.new("Squid3289", 6, 6))
	return names
