extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Balloon5_body_shape_entered(body_id, body, body_shape, area_shape):
	if(body.name.begins_with("Player2")):
		Player1.health = Player1.health - 1
		print(Player1.health)
		self.queue_free()
	if(body.name.begins_with("Top")):
		Player1.health = Player1.health - 3
		print(Player1.health)
		self.queue_free()
		
	if(body.name.begins_with("Bottom")):
		Player1.health = Player1.health - 3
		print(Player1.health)
		self.queue_free()
		
	if(body.name.begins_with("Left")):
		Player1.health = Player1.health - 3
		print(Player1.health)
		self.queue_free()
		
	if(body.name.begins_with("Right")):
		Player1.health = Player1.health - 3
		print(Player1.health)
		self.queue_free()	
		
	if(Player1.health == 0):
		print("Player2 Wins!")
	pass # replace with function body
