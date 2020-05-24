
min_range = 64; //extra variable to be used in cone shaped or ray shaped hitboxes
max_range = 128; //see above
ttl = 10; //time to live in frames
cleave = 5; //number of unique targets this skill can hit
size = s.small; //shape profile the hitbox uses
enum s //size variations of hitboxes
{
	self, //no hitbox just affects caster
	small, //small 64x64 sized hitbox
	medium, //128x128 hitbox
	big, //256x256 hitbox
	ray, //64xscreen_width sized hitbox
	cone, //uses the range variables to detect if target is in the cone, uses medium sized hitbox
	sphere, //uses the max_range variable to see if target is within the sphere, makes unique hitbox per skill
	everyone //no hitbox, just grabs actors from the active object table
}

source = player; //parent object for the hitbox, used for x and y coordinates and angle
target = t.enemies; //class of targets this can reach

enum t //target types
{
	self, //used for skills that target the caster
	allied, //used in buff or ground targeting heals 
	enemies, //used to flag offensive skills
	cutscene, //used only in cutscenes to break above rules
	all //affects all valid active targets
}