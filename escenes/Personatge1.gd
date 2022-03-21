extends KinematicBody2D

var gravetat = Vector2.DOWN*981
var velocitat= Vector2.ZERO 
var direccio = Vector2.DOWN
var velocitat_base = 200
var velocitat_salt=-500
var salts = -1
func _physics_process(delta):
	velocitat.x=0
	velocitat += gravetat * delta
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("salta") and salts >0:
		velocitat.y=velocitat_salt
		salts =-1
	if is_on_floor():
		salts=1
	
	velocitat=move_and_slide(velocitat, Vector2.UP)
	
	
