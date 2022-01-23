if state == global.states.idle || state == global.states.walk || state == global.states.run {
	//check for move modifiers
	var m_mod = 1 + running_mult * keyboard_check(vk_shift);
	moveX = lerp(moveX, inputX * moveSpeed*m_mod, 0.2);
	moveY = lerp(moveY, inputY * moveSpeed*m_mod, 0.2);
	
	//check for collision
	if !position_meeting(x+moveX,y,solid_) 
		//Commit to movement
			x += moveX;
	if !position_meeting(x,y+moveY,solid_) 
		//commit to movement
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

	//jump
	if keyboard_check_pressed(vk_space) {
		state_set(global.states.jump);
	}
}

y_offset = 0;
if state == global.states.jump {
	if ani > 0 {
		//slide in facing direction
		var m_mod = 1 + running_mult * keyboard_check(vk_shift);
		if facing < 2 { //0 and 1 are down and up
			if facing == 0
				y+= moveSpeed * m_mod;
			else 
				y-= moveSpeed * m_mod;
		} else { //2 and 3 are right and left
			if facing == 2
				x+= moveSpeed * m_mod;
			else 
				x-= moveSpeed * m_mod;
		}
		//sinewave the y_offset variable
		var ch = animcurve_get_channel(fake_jump_curve,0);
		y_offset = animcurve_channel_evaluate(ch,ani/4)
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

depth = -y;

