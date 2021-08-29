
if first_frame {
	if place_meeting(x,y-32,bush) || place_meeting(x,y+32,bush) {//|| place_meeting(x+32,y,bush) || place_meeting(x-32,y,bush) {
		//make collsion box whole sprite
		instance_create_layer(x,y,"Instances",invisible_solid_);
	}
	
	first_frame = false;
}