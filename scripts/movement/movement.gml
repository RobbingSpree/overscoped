// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function State(_sprite) constructor{
	sprite = _sprite;
	
	stateOnEnd = undefined;
	static StateOnEnd = function (_state) {
		stateOnEnd = _state;
	}
}

function state_set (new_state) {
	if (State == new_state) return;
	state = _state;
	
	sprite_index = state.sprite;
	image_index = facing*8;
}

/*
idle,
walking,
charge,
channel,
afterburn,
auto_atack,
hurt,
CC,
talking,
menu,
dead