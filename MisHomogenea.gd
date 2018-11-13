extends Area2D

const speed = 50
var movi = Vector2()

func _ready():
	set_process(true)

func _process(delta):
	
	if Input.is_action_pressed("ui_left"):
		movi += Vector2(-1, 0)
	elif Input.is_action_pressed("ui_right"):
		movi += Vector2(1, 0)
	else:
		movi += Vector2(0, 0)
	position = movi * speed * delta
		
