/// @description Insert description here
// You can write your code in this editor
if show
{
	if ani_time > 0
	{
		//animate opening the menu
	}
	else
	{
		//show menu contents
		//draw menu background
		draw_rectangle(20,20,room_width-20,room_height-20,false);
		
		//draw menu contents
		if current_menu == "job"
		{
			
		}
		if current_menu == "quest"
			//filler
			draw_text(room_width/2,room_height/2,debug);
		if current_menu == "map"
			//filler
			draw_text(room_width/2,room_height/2,debug);
	}
}