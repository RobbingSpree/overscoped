function get_job_name(index) {
	switch index
	{
		case jobs.daydreamer: return "Daydreamer"; break;
		case jobs.nightdreamer: return "NightDreamer"; break;
		case jobs.adventurer: return "Adventurer"; break;
		case jobs.wildchild: return "WildChild"; break;
		case jobs.televiolence: return "Tele-Violence"; break;
		case jobs.swordperson: return "Swordsperson"; break;
		case jobs.failedadventurer: return "Failed Adventurer"; break;
		case jobs.crittermonger: return "Crittermonger"; break;
		case jobs.kittenmancer: return "Kittenmancer"; break;
		case jobs.janksmith: return "Janksmith"; break;
		case jobs.thurmaturge: return "Thurmaturge"; break;
		case jobs.dangersprite: return "DangerSprite"; break;
	}


}

function job_board_initalize() {
	var i =0;
	var unit = 128;
	//job Daydreamer
	jobname[i] = get_job_name(i); 
	jobimage[i] = 0; //index of job_icon_spr
	jobneeds[i,0] = -1; //the required nodes to make this selectable (-1 means always avaliable)
	jobx[i] = 0; //x position of the node
	joby[i] = 0; //y position of the node
	i++;
	//job 1
	jobname[i] = get_job_name(i); //"Adventurer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 0; //requires job 0 
	jobx[i] = 0; 
	joby[i] = -unit; 
	i++;
	//job 2
	jobname[i] = get_job_name(i); //"Tele-violence";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires job 1
	jobx[i] = unit; 
	joby[i] = -(2*unit); 
	i++;
	//job 3
	jobname[i] = get_job_name(i); // "Wild Child";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires job 1
	jobx[i] = 0; 
	joby[i] = -(2*unit); 
	i++;
	//job 4
	jobname[i] =get_job_name(i); // "Swordsperson";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires job 1
	jobx[i] = -unit; 
	joby[i] = -(2*unit); 
	i++;
	//job 5
	jobname[i] = get_job_name(i); //"Nightdreamer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 0; //requires job 0
	jobx[i] = -unit; 
	joby[i] = 0; 
	i++;
	//job 6
	jobname[i] = get_job_name(i); //"Janksmith";
	jobimage[i] = 0; 
	jobneeds[i,0] = 5; //requires job 5
	jobx[i] = -(2*unit); 
	joby[i] = 0; 
	i++;
	//job 7
	jobname[i] = get_job_name(i); //"Thurmaturge";
	jobimage[i] = 0; 
	jobneeds[i,0] = 6; //requires job 6
	jobx[i] = -(2*unit); 
	joby[i] = -unit; 
	i++;
	//job 8
	jobname[i] = get_job_name(i); //"Danger Sprite";
	jobimage[i] = 0; 
	jobneeds[i,0] = 7; //requires job 7
	jobx[i] = -(3*unit); 
	joby[i] = -unit; 
	i++;
	//job 9
	jobname[i] = get_job_name(i); //"Failed Adventurer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires job 1
	jobx[i] = (2*unit); 
	joby[i] = -unit; 
	i++;
	//job 10
	jobname[i] = get_job_name(i); //"Crittermonger";
	jobimage[i] = 0; 
	jobneeds[i,0] = 9; //requires job 9
	jobx[i] = (2*unit); 
	joby[i] = 0; 
	i++;
	//job 11
	jobname[i] = get_job_name(i); //"Kittenmancer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 10; //requires job 10
	jobx[i] = (2*unit); 
	joby[i] = unit; 
	i++;
}
