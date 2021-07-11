if state == global.states.idle || state == global.states.walk {
	moveX = lerp(moveX, inputX * moveSpeed, 0.2);
	moveY = lerp(moveY, inputY * moveSpeed, 0.2);

	x += moveX;
	y += moveY;

	//flip 
	if inputX != 0 || inputY != 0 {
		//image_xscale = sign(inputX);
		//sprite update to move
		state_set(global.states.walk);
	} else {
		//sprite update to idle
		state_set(global.states.idle);
	}

	//attack
	if keyboard_check_pressed(vk_space) {
		state_set(global.states.attack);
	}
}

ani_count ++
if ani_count >= ani_speed {
	ani_count  = ani_count mod ani_speed;
	ani++
	if ani >= state.length {
		ani = 0;
		if state.stateOnEnd != undefined
			state_set(state.stateOnEnd);
		else 
			image_index = state.first_frame[facing];
	} else {
		image_index = state.frames[facing,ani];
	}
}