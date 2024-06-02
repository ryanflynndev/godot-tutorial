extends CharacterBody2D


func _physics_process(delta):
	# Gets the movement direction
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	# move in input directon in 600 pixels per second
	velocity = direction * 600
	move_and_slide()
	
	# We check if there's a change in velocity before adding the walk animation
	if velocity.length() > 0.0:
	# Gets another node. In this case the character node
	# Then we call the walk animation method
		get_node("HappyBoo").play_walk_animation()
	else:
		# otherwise we make the character idle
		get_node("HappyBoo").play_idle_animation()
