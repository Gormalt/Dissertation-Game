extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")

func _on_ButtonPlay1A_pressed():
	var body = "Hey"
	# Convert data to json string:
	var query = {"name":"Test"}
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json", "Task:101", "Time:102", "Name:Jake1234"]
	$HTTPRequest.request("http://174.7.106.132:8010", headers, false, HTTPClient.METHOD_POST, body)

func _on_request_completed(result, response_code, headers, body):
	#var json = JSON.parse(body.get_string_from_utf8())
	print(response_code)


var timeElapsed = 0.0

func _process(delta: float) -> void:
		timeElapsed += delta
		set_text(str(floor(900 - timeElapsed)))


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	pass # Replace with function body.
