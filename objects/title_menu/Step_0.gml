/// @description Insert description here
// You can write your code in this editor
delay--;

if delay <= 0
	delay = 0;
	
if mouse_check_button_released(mb_left) && delay <= 0
	room_goto_next();