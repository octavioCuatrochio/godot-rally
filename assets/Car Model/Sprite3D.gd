extends Sprite3D

var reverse = false


func _ready():
	texture = get_parent().get_node("Viewport").get_texture()

func _process(delta):
	var speed = get_parent().linear_velocity
	var engine_force = get_parent().engine_force


	
	if(speed == null):
		get_parent().get_node("Viewport").set_speed(0)
	else:
			speed = speed.length()
			speed *= 3.6
			get_parent().get_node("Viewport").set_speed(speed)
			
			if(speed < 5.0 and engine_force <= 0):
				reverse = true
			else:
				reverse = false
				
			if (reverse and engine_force < 0):
				get_parent().get_node("Viewport").set_speed("R")

	texture = get_parent().get_node("Viewport").get_texture()
