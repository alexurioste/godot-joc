extends KinematicBody2D

var velocitat_base = 325
var velocitat = Vector2.DOWN * velocitat_base
var gravetat = Vector2.DOWN * 1300
var salt = Vector2.UP * 750
var doble_salt = 1
var x = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	velocitat.x= 0
	if Input.is_action_pressed("mou dreta"):
		velocitat +=Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou_esquerra"):
		velocitat +=Vector2.LEFT * velocitat_base
	if Input.is_action_just_pressed("mou adalt") and doble_salt != 0:
		velocitat = salt
		doble_salt -= 0.5
	if is_on_floor():
		doble_salt = 1
	velocitat += gravetat * delta 
	velocitat = move_and_slide(velocitat, Vector2.UP)
	if position.y >= 3000:
		get_tree().change_scene("res://escenes/escena mort.tscn")
func anima(velocitat: Vector2):
	var animacio : AnimatedSprite  = $AnimatedSprite
	if velocitat.x > 0:
		animacio.flip_h = true
		animacio.play('camina')
	elif velocitat.x < 0:
		animacio.flip_h = false
		animacio.play('camina')
	if velocitat.y < -1:
		animacio.play('salta')






func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://escenes/escenaguanyadora.tscn")
