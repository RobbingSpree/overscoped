/// @description 

mouse_over = false;
if mouse_x > x && mouse_x < x+sprite_width && mouse_y > y && mouse_y < y+sprite_height
{
	mouse_over = true;
	player.next_skill = skill;
	if mouse_check_button_pressed(mb_left)
	{
		
	}
}