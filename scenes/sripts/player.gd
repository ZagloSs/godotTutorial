extends CharacterBody2D

var can_axe: bool = true
var can_sword: bool = true

func _process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	var speed = 600 
	
	
	velocity = direction * speed
	move_and_slide()
	
	
	#AnimationSimple
	if Input.is_action_just_pressed("left") :
		$man.flip_h = true
	if Input.is_action_just_pressed("right") :
		$man.flip_h = false
		
		
		
		
	if Input.is_action_pressed("action") and can_axe:
		print("Throw Axe")
		can_axe = false
		$"timeout-axes".start()
		
	if Input.is_action_pressed("action2") and can_sword:
		print("Throw Sword")
		can_sword = false
		$"timeout-swords".start()
		
		

func _on_timer_timeout():
	can_axe = true
	


func _on_timeoutswords_timeout():
	can_sword=true
