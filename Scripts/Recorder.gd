extends Node


#here is the plan:
#dataList will be an array containing all of the data.
#Each element of dataList will be a SetResult, which contains all of the data for that set (index matching the set number)
#Among other things, a SetResult will contain many runResults, which will contain data for each specific test

class_name Recorder

var set = 0
var dataList = Array()

func goToSet(num):
	set = num
	if(set + 1 > dataList.size()):
		dataList.insert(set, SetResult.new(set))

func addRun(run, setNo = set):
	dataList[setNo].addRun(run)
	
func getVersionHistory(vers, setNo = set):
	print(dataList[set].getVers(vers))
	return dataList[set].getVers(vers)
