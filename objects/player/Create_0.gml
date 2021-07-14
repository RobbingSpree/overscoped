inputX = 0;
inputY = 0;

moveSpeed = 1.5;
running_mult = 1;
moveX = 0;
moveY = 0;
facing = 0;

//animation variables
ani = 0;
ani_speed = 10;
ani_count = 0;
delta = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
under_layer = char_a_p1_1out_boxr_v01;

//initalize state
global.states = {
	idle : new State("idle",0, true),
	walk : new State("walk",1, true),
	run : new State("run",2, false),
	attack: new State("jump",3, false)
}
global.states.attack.stateOnEnd = global.states.idle;
//set initial state
state = global.states.idle;