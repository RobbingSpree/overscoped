/// @description charcater setup
image_xscale = 2;
image_yscale = 2;
image_speed = 0;
mv_spd = 3; //player movement speed per frame
dpad_dir=no_direction; //vert2 of player input
facing = 0;
player_state = state.idle;
player_job = jobs.daydreamer; //player's current job
door_jump=true; //flag for room start to move the player to the approprate 
mode = m.explore; //the game mode the player is in //will change some non-allowed skills
menu_memory = "job"; //the menu the game will open to 
next_skill = -1; //currently highlighted skill, assume it'll be the next skill 
start_next_skill = false; //flag to activate skill currently listed in next_skill

global.last_room = room0;
global.current_job = player_job;
setup_skill_unlocks();

skill=[];
var skill_scale=0.5;
for (var i=0; i<8; i++)
{
	skill[i]=instance_create_layer(room_width/2-124*skill_scale*4+i*124*skill_scale,room_height-124*skill_scale,"Instances",skill_bar);	
	skill[i].index=i;
}
skill[0].change_skill_to=9;
skill[1].change_skill_to=71;
skill[2].change_skill_to=49;
skill[3].change_skill_to=99;

update_skill(all);

global.skill_list = [];
total_skills = 4;
 