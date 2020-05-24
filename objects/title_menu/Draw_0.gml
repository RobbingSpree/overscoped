/// @description Insert description here
// You can write your code in this editor
var scale = 0.25;
draw_sprite_ext(logo_spr,0,room_width/2,room_height/2,scale,scale,0,c_white,1);

draw_set_halign(fa_center);
draw_set_font(ui_fnt);
draw_text(room_width/2,room_height/2,"Click to Start");
draw_set_halign(-1);
draw_set_font(-1);