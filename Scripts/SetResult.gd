extends Node


class_name SetResult

var runs = Array()
var setNo: int

func _init(num:int = 0):
	setNo = num

func addRun(run):
	runs.append(run)

func getVers(vers):
	var count = 0
	for run in runs:
		if(run.version == vers):
			count = count+1
	return count
