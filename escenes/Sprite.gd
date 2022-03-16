extends Area2D

var velocitat = 400
var direccio = Vector2(0,0)
func _ready():
	position = Vector2(100, 300)	

func _process (delta):
	direccio = Vector2.ZERO
	
	if Input.is_action_pressed("mou dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("mou esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("mou endevant"):
		direccio += Vector2.UP
	if Input.is_action_pressed("mou enrrere"):
		direccio += Vector2.DOWN
	
	
	position += direccio.normalized() * velocitat * delta


func _on_personatge_area_entered(area):
	modulate = Color(1,0,0)
	area.modulate = Color(0,1,0)


func _on_personatge_area_exited(area):
	modulate = Color(1,1,1)
	area.modulate = Color(1,1,1)
