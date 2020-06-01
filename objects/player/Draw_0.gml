/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(facing_indicator_spr,0,x,y,1,1,facing*45,c_white,1);
draw_self();

draw_text(20,20,facing);
draw_text(20,50,mode);

//if action
	
draw_text(20,80, room_persistent);