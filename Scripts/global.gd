extends Node

var RedCups: int = 0

var y = rand_range(3500, 4500)

var x = str("Player" + str(round(y)))

var phase = 0
var set = 0



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
