inputX = 0;
inputY = 0;

moveSpeed = 2;
moveX = 0;
moveY = 0;
facing = 0;

//animation variables
ani = 0;
ani_speed = 5;
ani_count = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
under_layer = char_a_p1_1out_boxr_v01;

//initalize state
global.states = {
	idle : new State("idle",0),
	walk : new State("walk",1),
	run : new State("run",2),
	attack: new State("jump",3)
}
global.states.attack.stateOnEnd = global.states.idle;
//set initial state
state = global.states.idle;