extends KinematicBody2D


export var velocitat = Vector2(1,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position=Vector2(0,1000)
	
	
func _process(delta):
	print (position.x)
	position += velocitat
	if position.x == 1200:
		get_tree().change_scene("res://escenes/escena mort.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
