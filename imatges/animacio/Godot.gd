extends Area2D



var velocitat := 300
var direccio = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(100,300)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
# pass
func _process(delta):
	direccio = Vector2(0,0)

	if Input.is_action_pressed("mou dreta"):
		direccio+= Vector2(1,0)
	if Input.is_action_pressed("mou_esquerra"):
		direccio+= Vector2(-1,0)
	if Input.is_action_pressed("mou adalt"):
		direccio+= Vector2(0,-1)
	if Input.is_action_pressed("mou abaix"):
		direccio+= Vector2(0,1)
	
	position += direccio * velocitat *delta

func _on_personatge_area_entered(area):

	if area.is_in_group("area1"):
		modulate = Color(1,0,0)
	if area.is_in_group("area2"):
		modulate = Color(0,1,0)
	rotation_degrees = 45
func _on_personatge_area_exited(area):
	modulate = Color(1,1,1)
	rotation_degrees =  0
