extends Control


func _ready():
	
	var rand = Global.randomNum(0, 2) + 4 + Global.prefM
	Global.curRun.setScore(rand)
	Global.curRun.setEffort(Global.RedCups)
	var list = Global.randNames()
	
	Global.equalScore = rand;
	if(Global.vers == 1 && Global.set == 2):
		for x in list:
			x.score = rand
	Global.curRun.board = list
	
	if(Global.vers == 0 || Global.vers == 1):
		$LabelUsername.text = str(list[0].pName)
		if(Global.vers == 0):
			$LabelScore.text = str(list[0].score)
		elif(Global.vers == 1):
			$LabelScore.text = str(rand)
			
		if(list.size() > 1):
			$LabelUsername2.text = str(list[1].pName)
			$LabelScore2.text = str(list[1].score)
			$LabelUsername3.text = str(list[2].pName)
			$LabelScore3.text = str(list[2].score)
			$LabelUsername4.text = str(list[3].pName)
			$LabelScore4.text = str(list[3].score)	
			$LabelUsername5.text = str(list[4].pName)
			$LabelScore5.text = str(list[4].score)
			$LabelUsername6.text = str(list[5].pName)
			$LabelScore6.text = str(list[5].score)
			$LabelUsername7.text = str(list[6].pName)
			$LabelScore7.text = str(list[6].score)	
			$LabelUsername8.text = str(list[7].pName)
			$LabelScore8.text = str(list[7].score)
			$LabelUsername9.text = str(list[8].pName)
			$LabelScore9.text = str(list[8].score)
			$LabelUsername10.text = str(list[9].pName)
			$LabelScore10.text = str(list[9].score)	
			$LabelUsername11.text = str(list[10].pName)
			$LabelScore11.text = str(list[10].score)
			$LabelUsername12.text = str(list[11].pName)
			$LabelScore12.text = str(list[11].score)
			$LabelUsername13.text = str(list[12].pName)
			$LabelScore13.text = str(list[12].score)	
			$LabelUsername14.text = str(list[13].pName)
			$LabelScore14.text = str(list[13].score)
			$LabelUsername15.text = str(list[14].pName)
			$LabelScore15.text = str(list[14].score)
			$LabelUsername16.text = str(list[15].pName)
			$LabelScore16.text = str(list[15].score)	
			$LabelUsername17.text = str(list[16].pName)
			$LabelScore17.text = str(list[16].score)
			$LabelUsername18.text = str(list[17].pName)
			$LabelScore18.text = str(list[17].score)
			$LabelUsername19.text = str(list[18].pName)
			$LabelScore19.text = str(list[18].score)	
			$LabelUsername20.text = str(list[19].pName)
			$LabelScore20.text = str(list[19].score)	
