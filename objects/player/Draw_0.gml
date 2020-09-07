/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(facing_indicator_spr,0,x,y,1,1,facing*45,c_white,1);
draw_self();

draw_text(20,20,"angle: " + string(facing*45));
draw_text(20,50,"Mode: " + string(mode));
draw_text(20,80,"Next Skill: " + string(next_skill));

//if action
	
draw_text(20,80, room_persistent);