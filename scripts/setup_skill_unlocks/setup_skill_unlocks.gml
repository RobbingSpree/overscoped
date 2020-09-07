function setup_skill_unlocks() {
	global.unlocks = [];

	var unknown = 0;
	var known = 1;
	var active = 2;

	global.unlocks[jobs.daydreamer]			=active;
	global.unlocks[jobs.nightdreamer]		=known;
	global.unlocks[jobs.adventurer]			=known;
	global.unlocks[jobs.wildchild]			=unknown;
	global.unlocks[jobs.televiolence]		=unknown;
	global.unlocks[jobs.swordperson]		=unknown;
	global.unlocks[jobs.failedadventurer]	=unknown;
	global.unlocks[jobs.crittermonger]		=unknown;
	global.unlocks[jobs.kittenmancer]		=unknown;
	global.unlocks[jobs.janksmith]			=unknown;
	global.unlocks[jobs.thurmaturge]		=unknown;
	global.unlocks[jobs.dangersprite]		=unknown;


}
