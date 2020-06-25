/// @description Step event

//gather input
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var debug = keyboard_check_released(vk_escape);
var action = mouse_check_button_pressed(mb_right) || keyboard_check(ord("Q"));
//var jump = keyboard_check_pressed(vk_space) || keyboard_check(ord("E"));
var toggle_menu = keyboard_check_pressed(vk_tab);

//trasform dpad input to analog stick input
var input_h = right-left;
var input_v = down-up;
dpad_dir = point_distance(0,0,input_h,input_v) > 0 ? point_direction(0,0,input_h,input_v) : no_direction;

//handle movement
//check mode
if mode = m.explore || mode == m.combat
{
	if player_state != state.menu //disable movement when in menu
	{
		movement_and_collision(dpad_dir,mv_spd,solid_);
		facing = dpad_angle(input_h,input_v,facing);
	}
}

//check if in combat
if mode == m.combat
{
	//listen for skills
}

//exploration state machine
if mode == m.explore
{
	if toggle_menu
	{
		//toggle room persistence
		room_persistent = true;
		global.last_room=room;
		//go to menu
		room_goto(pause_menu);
	}
	if action
	{
		//look for context sensitive object nearby
	}
	
}

//debug
if debug
	room_restart();
	
//sprite update
update_player_facing();

depth = -y;