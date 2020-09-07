function job_board_initalize() {
	var i =0;
	var unit = 128;
	//skill 0
	jobname[i] = "Daydreamer"; //not used in demo
	jobimage[i] = 0; //index of job_icon_spr
	jobneeds[i,0] = -1; //the required nodes to make this selectable (-1 means always avaliable)
	jobx[i] = 0; //x position of the node
	joby[i] = 0; //y position of the node
	i++;
	//skill 1
	jobname[i] = "Adventurer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 0; //requires skill 0 
	jobx[i] = 0; 
	joby[i] = -unit; 
	i++;
	//skill 2
	jobname[i] = "Tele-violence";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires skill 1
	jobx[i] = unit; 
	joby[i] = -(2*unit); 
	i++;
	//skill 3
	jobname[i] = "Wild Child";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires skill 1
	jobx[i] = 0; 
	joby[i] = -(2*unit); 
	i++;
	//skill 4
	jobname[i] = "Swordsperson";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires skill 1
	jobx[i] = -unit; 
	joby[i] = -(2*unit); 
	i++;
	//skill 5
	jobname[i] = "Nightdreamer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 0; //requires skill 0
	jobx[i] = -unit; 
	joby[i] = 0; 
	i++;
	//skill 6
	jobname[i] = "Janksmith";
	jobimage[i] = 0; 
	jobneeds[i,0] = 5; //requires skill 5
	jobx[i] = -(2*unit); 
	joby[i] = 0; 
	i++;
	//skill 7
	jobname[i] = "Thurmaturge";
	jobimage[i] = 0; 
	jobneeds[i,0] = 6; //requires skill 6
	jobx[i] = -(2*unit); 
	joby[i] = -unit; 
	i++;
	//skill 8
	jobname[i] = "Danger Sprite";
	jobimage[i] = 0; 
	jobneeds[i,0] = 7; //requires skill 7
	jobx[i] = -(3*unit); 
	joby[i] = -unit; 
	i++;
	//skill 9
	jobname[i] = "Failed Adventurer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 1; //requires skill 1
	jobx[i] = (2*unit); 
	joby[i] = -unit; 
	i++;
	//skill 10
	jobname[i] = "Crittermonger";
	jobimage[i] = 0; 
	jobneeds[i,0] = 9; //requires skill 9
	jobx[i] = (2*unit); 
	joby[i] = 0; 
	i++;
	//skill 11
	jobname[i] = "Kittenmancer";
	jobimage[i] = 0; 
	jobneeds[i,0] = 10; //requires skill 10
	jobx[i] = (2*unit); 
	joby[i] = unit; 
	i++;




}
