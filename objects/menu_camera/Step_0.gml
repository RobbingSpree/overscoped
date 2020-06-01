/// @description Insert description here
// You can write your code in this editor
var left = keyboard_check_pressed(vk_left);
var right = keyboard_check_pressed(vk_right);
var menu_toggle = keyboard_check_pressed(vk_tab);

if left || right 
{
	var dir = right - left;
	menu_destination += dir;
	if menu_destination < ooo.job_board
		menu_destination=ooo.quest_board;
	if menu_destination > ooo.quest_board
		menu_destination=ooo.job_board;
}

if menu_toggle
{
	room_goto(global.last_room);
}

if screen != menu_destination
	screen=lerp(screen,menu_destination,0.4);
if abs(screen-menu_destination) < 0.2
{
	screen=menu_destination;
	last_menu=screen;
}

x = 1024*screen;
camera_set_view_pos(view_camera[0],x,y);

