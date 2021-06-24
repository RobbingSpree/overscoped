inputX = 0;
inputY = 0;

moveSpeed = 2;
moveX = 0;
moveY = 0;
facing = 0;

//initalize state
states = {
	idle : new State(IdleSheet),
	walk : new State(RunSheet),
	attack: new State(RunSheet)
}

states.attack.StateOnEnd(states.idle);

//set initial state
state = states.idle;