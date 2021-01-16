/// @description Update Sprite Index
function update_player_facing() {
	if(dpad_dir != no_direction)
	{
		//image_speed = 1;
		image_index=round_n(dpad_dir,45);
	}
	else
	{  
	  image_speed = 0;
	  //image_index = 0; //or whatever frame has both feet on the ground.
	}


}
