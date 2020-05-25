/// @description Insert description here
// You can write your code in this editor

mv_spd = 3; //player movement speed per frame
dpad_dir=no_direction; //vert2 of player input
facing = 0;
player_state = state.idle;
door_jump=true; //flag for room start to move the player to the approprate 
job = 0; //player's current job
mode = m.explore; //the game mode the player is in //will change some non-allowed skills

enum m
{
	explore,
	combat,
	magic,
	social,
	labor
}

enum state
{
	idle,
	walking,
	charge,
	channel,
	afterburn,
	auto_atack,
	hurt,
	CC,
	talking,
	menu,
	dead
}

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
 