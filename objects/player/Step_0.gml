if state == global.states.idle || state == global.states.walk || state == global.states.run {
	//check for move modifiers
	
	var m_mod = 1 + running_mult * keyboard_check(vk_shift);
	
	moveX = lerp(moveX, inputX * moveSpeed*m_mod, 0.2);
	moveY = lerp(moveY, inputY * moveSpeed*m_mod, 0.2);
	
	x += moveX;
	y += moveY;

	//flip 
	if inputX != 0 || inputY != 0 {
		//image_xscale = sign(inputX);
		//sprite update to move
		if keyboard_check(vk_shift) 
			state_set(global.states.run);
		else
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

delta += delta_time/1000;
if delta > state.frame_rate[ani] {
	delta =0;
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