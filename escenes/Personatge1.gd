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
	animacio(velocitat)
	
func animacio(velocitat):
	if velocitat.x > 0:
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.flip_h=false
	elif velocitat.x < 0:
		$AnimatedSprite.play("caminar")
		$AnimatedSprite.flip_h=true
	if abs(velocitat.x)<0.1:
		$AnimatedSprite.play("quiet")
	if velocitat.y > 0:
		$AnimatedSprite.play("saltar")
	
	
	
	


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://escenes/escena2.tscn")

func _on_objectes2_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes3_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes4_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes5_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes6_body_entered(body):
	get_tree().reload_current_scene()





func _on_objectes8_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes9_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes10_body_entered(body):
	get_tree().reload_current_scene()


func _on_objectes7_body_entered(body):
	get_tree().reload_current_scene()
