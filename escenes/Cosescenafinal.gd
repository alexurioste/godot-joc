extends KinematicBody2D

var velocitat_base = 325
var velocitat = Vector2.DOWN * velocitat_base
var gravetat = 0
var salt = Vector2.UP * 750
var doble_salt = 1
var x = 0

# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	position.x=0
	velocitat.x= 0
	if Input.is_action_pressed("enter"):
		velocitat +=Vector2.RIGHT * velocitat_base
	velocitat = move_and_slide(velocitat, Vector2.UP)
	if position.x > 0 or position.x<0:
		get_tree().change_scene("res://escenes/Cos_terra.tscn")
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


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
