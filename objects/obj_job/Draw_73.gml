switch (status)
{
    case 0: // Unavailable
        draw_sprite(job_icon_spr,5,x,y) // image_index 10 is a gray image of the skill so draw this if they cant buy the skill
    break;
    case 1: // Available
        draw_sprite(job_icon_spr,image_index,x,y) // they can buy the skill so draw it normally
    break;
    case 2:
        draw_sprite(job_icon_spr,image_index,x,y) // they have bought the skill so draw it normally but ontop draw a box that shows they own it
        draw_sprite(node_spr_avaliable,0,x,y)
    break;
}
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_text(x,y,jobid);
draw_text(x,y+30,get_job_name(jobid));
draw_set_halign(-1);