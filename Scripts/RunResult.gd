extends Node

#This class records all data about the run
class_name RunResult

var version
#times are stored in a dictionary: A combo of section+time
var times
var score: int
var effort: int
var runNo: int

func _init(vers = "None", time = {}, sco = -1, eff = -1, rn = -1):
	version = vers
	times = time
	score = sco
	effort = eff
	runNo = rn

#Section is a string (the key we are using to store the value) and value is the time that section took
func addTime(section, value):
	times[section] = value
	
func setScore(value):
	score = value
	
func setEffort(value):
	effort = value
