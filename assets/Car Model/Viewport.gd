tool
extends Viewport

func _process(delta):
	size = $Label.rect_size
	pass


func set_speed(speed):
	if(typeof(speed) != TYPE_STRING):
		speed = stepify(speed,1)
	$Label.text = str(speed)
