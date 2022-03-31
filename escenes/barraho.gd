extends Area2D

var velocitat= 2
var time=0

func _ready():
	position=Vector2(0,0)
	
	
func _process(delta):
	if time<3:
		time=time+1*delta
	else:
		if position.y < 	

