extends Node

#This class records all data about the run
class_name RunResult

var version
#times are stored in a dictionary: A combo of section+time
var times = Array()
var score: int
var effort: int
var runNo: int
var board = Array()

func _init(vers = "None", time = Array(), sco = -1, eff = -1, rn = -1):
	version = vers
	times = time
	score = sco
	effort = eff
	runNo = rn

#Section is a string (the key we are using to store the value) and value is the time that section took
func addTime(value):
	times.append(value)
	
func setScore(value):
	score = value
	
func setEffort(value):
	effort = value
	
func getResult():
	var timeTotal = "-"
	var bScores = ""
	for sco in board:
		bScores += str(sco.score) + ':'
	for time in times:
		timeTotal += str(floor(time)) + '-'
	return "| Run number: " + str(runNo) + ", Choice: " + str(version) + ", Random Score: " + str(score) + ", Cups Collected: " + str (effort) + ", Waited for: " + str(timeTotal) + ", Others effort: " + str(bScores) + "  "
