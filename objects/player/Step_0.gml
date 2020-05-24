/// @description Step event

//gather input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);
var debug = keyboard_check_released(vk_escape);

var input_h = right-left;
var input_v = down-up;

dpad_dir = point_distance(0,0,input_h,input_v) > 0 ? point_direction(0,0,input_h,input_v) : no_direction;

//handle movement
movement_and_collision(dpad_dir,mv_spd,solid_);


//debug
if debug
	room_restart();
	
//sprite update
update_player_facing();

depth = -y;