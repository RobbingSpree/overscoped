// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nine_slice_draw(x1,y1,x2,y2,sprite){
	var _w = x2-x1;
	var _h = y2-y1;
	var _size = sprite_get_width(sprite);
	var col = _h div _size;
	var row = _w div _size;
	
	//corners
	//top left
	draw_sprite_part(sprite,0,0,0,_size,_size,x1,y1);
	//top right
	draw_sprite_part(sprite,0,_size*2,0,_size,_size,x1+(row*_size),y1);
	//bottom left
	draw_sprite_part(sprite,0,0,_size*2,_size,_size,x1,y1+(col*_size));
	//bottom right
	draw_sprite_part(sprite,0,_size*2,_size*2,_size,_size,x1+(row*_size),y1+(col*_size));
	
	//edges
	//side edges
	for (var i=0; i<_h; i++) {
		//left
		draw_sprite_part(sprite,0,0,_size,_size,_size,x1,y1+(i*_size));
		//right
		draw_sprite_part(sprite,0,_size*2,_size,_size,_size,x1+(row*_size),y1+(i*_size));
	}
	//top edges
	for (var i=0; i<_h; i++) {
		//top
		draw_sprite_part(sprite,0,_size,0,_size,_size,x1+(i*_size),y1);
		//bottom
		draw_sprite_part(sprite,0,_size,_size*2,_size,_size,x1+(i*_size),y1+(col*_size));
		
	}
}

function nine_slice_scale_draw(x1,y1,xscale,yscale,sprite){
	//the same thing but pass the image scale to the script and solve the values again
	var _size = sprite_get_width(sprite);
	var _w = _size*xscale;
	var _h = _size*yscale;
	var col = _h div _size;
	var row = _w div _size;
	
	//corners
	//top left
	draw_sprite_part(sprite,0,0,0,_size,_size,x1,y1);
	//top right
	draw_sprite_part(sprite,0,_size*2,0,_size,_size,x1+(row*_size),y1);
	//bottom left
	draw_sprite_part(sprite,0,0,_size*2,_size,_size,x1,y1+(col*_size));
	//bottom right
	draw_sprite_part(sprite,0,_size*2,_size*2,_size,_size,x1+(row*_size),y1+(col*_size));
	
	//edges
	//side edges
	for (var i=0; i<_h; i++) {
		//left
		draw_sprite_part(sprite,0,0,_size,_size,_size,x1,y1+(i*_size));
		//right
		draw_sprite_part(sprite,0,_size*2,_size,_size,_size,x1+(row*_size),y1+(i*_size));
	}
	//top edges
	for (var i=0; i<_h; i++) {
		//top
		draw_sprite_part(sprite,0,_size,0,_size,_size,x1+(i*_size),y1);
		//bottom
		draw_sprite_part(sprite,0,_size,_size*2,_size,_size,x1+(i*_size),y1+(col*_size));
		
	}
}