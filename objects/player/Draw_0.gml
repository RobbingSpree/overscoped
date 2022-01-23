
//draw player
//draw_self();
draw_sprite(sprite_index,image_index,x,y-y_offset);
draw_sprite_ext(under_layer,image_index,x,y-y_offset,image_xscale,image_yscale,0,c_white,1);

//debug values
draw_text(x+50,y,state.state_name);
draw_text(x+50,y+20,image_index);
draw_text(x+50,y+40,facing);
draw_text(x+50,y+60,ani);
draw_text(x+50,y+80,y_offset);


