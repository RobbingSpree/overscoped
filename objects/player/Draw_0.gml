/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_sprite_ext(under_layer,image_index,x,y,image_xscale,image_yscale,0,c_white,1);

draw_text(x+50,y,ani);
draw_text(x+50,y+20,image_index);
draw_text(x+50,y+40,ani_count);