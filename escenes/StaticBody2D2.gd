extends StaticBody2D
export var velocitat = Vector2(130,0)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(618,135)
	
func _process(delta):
	position += velocitat * delta
	if position.x >= 780 or position.x<= 550:
		velocitat[0] = -velocitat[0]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
