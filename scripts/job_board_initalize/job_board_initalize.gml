var i =0;

jobname[i] = "Skill 0"; //not used in demo
jobimage[i] = 0; //index of job_icon_spr
jobneeds[i,0] = -1; //the required nodes to make this selectable (-1 means always avaliable)
jobx[i] = 230; //x position of the node
joby[i] = 230; //y position of the node
i++;

jobname[i] = "Skill 1";
jobimage[i] = 0; 
jobneeds[i,0] = -1; 
jobx[i] = 370; 
joby[i] = 230; 
i++;

jobname[i] = "Skill 2";
jobimage[i] = 0; 
jobneeds[i,0] = 0; //requires skill 0 
jobneeds[i,1] = 1; //requires skill 1
jobx[i] = 300; 
joby[i] = 160; 
i++;

