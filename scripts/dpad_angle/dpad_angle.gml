function dpad_angle(argument0, argument1, argument2) {
	var x_axis = argument0;
	var y_axis = argument1;
	var angle = argument2;

	if x_axis !=0 || y_axis !=0
	{
		angle = 4+2*y_axis;
		if angle == 4 && x_axis == 1
			angle = 0;
		if x_axis !=0 && y_axis !=0
			angle += x_axis*y_axis;
	}

	return angle; 


}
