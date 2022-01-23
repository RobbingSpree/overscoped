inputX = 0;
inputY = 0;

moveSpeed = 1.5;
running_mult = 1;
moveX = 0;
moveY = 0;
facing = 0;

//animation variables
ani = 0;
hold_count = 0; //count for charging or walking into a pushable object
hold_max = 0;
jump_dist = 32;
delta = 0;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;
y_offset = 0;
under_layer = char_a_p1_1out_boxr_v01;

//camera variables
//camera_setup();
//_camera = 

//initalize state
global.states = {
	idle : new State("idle",0, true),
	walk : new State("walk",1, true),
	run : new State("run",2, false),
	jump: new State("jump",3, false)
}
global.states.jump.stateOnEnd = global.states.idle;
//set initial state
state = global.states.idle;

