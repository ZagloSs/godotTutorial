extends CharacterBody2D



func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	var speed = 600 
	
	
	velocity = direction * speed
	move_and_slide()
	
	
	#AnimationSimple
	if(Input.is_action_just_pressed("left")):
		$man.flip_h = true
	if(Input.is_action_just_pressed("right")):
		$man.flip_h = false
	
	

	
