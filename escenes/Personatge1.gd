extends KinematicBody2D

var gravetat = Vector2.DOWN*981
var velocitat= Vector2.ZERO 
var direccio = Vector2.DOWN
var velocitat_base = 200


func _physics_process(delta):
	move_and_slide(velocitat)
	velocitat += gravetat * delta
	
