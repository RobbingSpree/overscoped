/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_colour(c_black);
draw_text(x-27,y-25,"X: "+string(player.x-x));
draw_text(x-27,y+10,"Y: "+string(player.y-y));
draw_set_colour(c_white);