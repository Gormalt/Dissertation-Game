extends Button

"""
Some test code for sending a very silly HTTP request.
I don't know why, but any datat that I put into the body seems not to show up on the other side.
So, I am putting the data into the header (which is a very silly thing to do).
As a result we might just send a bunch of these things for one persons data.
Pretty coolio - K
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

"""
func _ready():
	pass


func _on_ButtonPlay1A_pressed():
	
	#yield(SilentWolf.Scores.persist_score("KylesUndeletableTest2", 99, "main", metadata), "sw_score_posted")
	#var scores = yield(SilentWolf.Scores.get_high_scores(10), "sw_scores_received")
	#print("scores:" + str(scores))
	#Remove these hashtags to make the function work again, this was practice 
	#for learning how to use SilentWolf scoreboards
	#also figure out how to delete all these random scores you've made Danielle
	
	#Cool send function that shouldn't be used
	#send()
	#Cool Chagne
	var rndm = Global.randomNum(0, 2);
	if(rndm == 0):
		get_tree().change_scene("res://Title2.tscn")
	elif(rndm == 1):
		get_tree().change_scene("res://Title3.tscn")
	else:
		get_tree().change_scene("res://Title4.tscn")
	
func _make_post_request(url, data_to_send, use_ssl):
	# Convert data to json string:
	var query = JSON.print(data_to_send)
	# Add 'Content-Type' header:
	var headers = ["Content-Type: application/json"]
	$HTTPRequest.request(url, headers, use_ssl, HTTPClient.METHOD_POST, query)
	
		
func send():
	# Create an HTTP request node and connect its completion signal.
	var http_request = HTTPRequest.new()
	add_child(http_request)
	http_request.connect("request_completed", self, "_http_request_completed")
	
	# Perform a GET request. The URL below returns JSON as of writing.
	var error = http_request.request("https://httpbin.org/get")
	if error != OK:
		push_error("An error occurred in the HTTP request.")

	# Perform a POST request. The URL below returns JSON as of writing.
	# Note: Don't make simultaneous requests using a single HTTPRequest node.
	# The snippet below is provided for reference only.
	#var body = {"name": "Godette"}
	#var body = "Hi"
	#var error = http_request.request("http://174.7.106.132:8010/", [], true, HTTPClient.METHOD_POST, body)
	#if error != OK:
	#	push_error("An error occurred in the HTTP request.")


# Called when the HTTP request is completed.
func _http_request_completed(result, response_code, headers, body):
	var response = parse_json(body.get_string_from_utf8())

	# Will print the user agent string used by the HTTPRequest node (as recognized by httpbin.org).
	print(response.headers["User-Agent"])


func _on_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	print(json.result)

