extends Area

signal RedCupCollected

func _ready():
	pass

func _physics_process(_delta):
	rotate_y(deg2rad(2))


func _on_RedCup_body_entered(body):
	if body.name == "BeachBallCharacter":
		$AnimationPlayer.play("grow")
		$Timer.start()


func _on_Timer_timeout():
	emit_signal("RedCupCollected")
	queue_free()
