/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(skills_spr1,skill,x,y,scale,scale,0,c_white,1);
if mouse_over
{
	draw_sprite_ext(skill_highlight_spr,0,x,y,scale,scale,0,c_white,1);
	//draw_set_color(c_white);
	draw_text(30,30,skill);
}
draw_self();
draw_text(x,y,hotkey);