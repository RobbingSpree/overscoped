var i =0;

skillname[i] = "Skill 0"; //not used in demo
skillimage[i] = 0; //index of job_icon_spr
skillneeds[i,0] = -1; //the required nodes to make this selectable (-1 means always avaliable)
skillx[i] = 230; //x position of the node
skilly[i] = 230; //y position of the node
i++;

skillname[i] = "Skill 1";
skillimage[i] = 0; 
skillneeds[i,0] = -1; 
skillx[i] = 370; 
skilly[i] = 230; 
i++;

skillname[i] = "Skill 2";
skillimage[i] = 0; 
skillneeds[i,0] = 0; //requires skill 0 
skillneeds[i,1] = 1; //requires skill 1
skillx[i] = 300; 
skilly[i] = 160; 
i++;

