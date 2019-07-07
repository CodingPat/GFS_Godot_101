extends AnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed=200
var screen_size
var scaling=0.3 
var sprite_size

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size=get_viewport_rect().size
	position=Vector2(screen_size.x/2,screen_size.y/2)
	scale=Vector2(scaling,scaling)
	sprite_size=frames.get_frame("walking",0).get_size()*scaling
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_right"):
		animation="walking"
		flip_h=false
		position.x+=delta*speed
		if position.x+sprite_size.x/2>screen_size.x:
			position.x=screen_size.x-sprite_size.x/2

	elif Input.is_action_pressed("ui_left"):
		animation="walking"
		flip_h=true
		position.x-=delta*speed
		if position.x-sprite_size.x/2<0:
			position.x=sprite_size.x/2

	else:
		animation="idle"
		
	play()
	
