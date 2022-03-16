extends Sprite

var velocitat = 300
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
