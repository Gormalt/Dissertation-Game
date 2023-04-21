extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var runTotal = ""
var runDif = -3

# Called when the node enters the scene tree for the first time.
func _ready():
	runTotal = ""
	
	if(Global.set == 1):
		runDif = 0
	else:
		runDif = -3
	
	if(Global.set == 0):
		runTotal = "9"
	elif (Global.set == 5):
		runTotal = "10"
	else:
		runTotal = "20"
	
	set_text("Completed Round " + str(Global.run + runDif) + " out of " + runTotal);
	pass # Replace with function body. 

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
