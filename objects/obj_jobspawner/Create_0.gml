/// @description 

job_board_initalize();

image_alpha=1;
job_change = -1;
j_board = [];

for ( i=0; i<array_length_1d(jobname); i++)
{
	var newskill = instance_create_layer(x+jobx[i],y+joby[i],"Instances",obj_job);
	newskill.image_index = jobimage[i];
	newskill.jobname = jobname[i];
	newskill.jobid=i;
	j_board[i]=newskill;
	
	show_debug_message("We have made Job" + string(jobname[i]));
	
	//assert - the object has been made
	
	with(newskill) //now we want to pre-solve the connections and store them so we're not solving them each frame
	{
		for (var k=0; k<array_length_2d(other.jobneeds,other.i); k++)
		{
			jobneeds[k] = other.jobneeds[other.i,k];
			show_debug_message("Job "+ string(newskill.jobname)+" needs " + string(jobneeds[k]));
			if jobneeds[k] == -1 //-1 means always avaliable, draw line to root node
			{
				status = global.unlocks[jobid];
				linetox[0] = obj_jobspawner.x;
				linetoy[0] = obj_jobspawner.y;
				needcount=1;
			} else { // on the new skill record where its lines should be drawn so we don’t need to look it up every frame
              
                linetox[k] = obj_jobspawner.x + other.jobx[jobneeds[k]];
                linetoy[k] = obj_jobspawner.y + other.joby[jobneeds[k]];
                
                needcount++;
            }
		}
	}
}
//http://www.davetech.co.uk/gamemakercomplexskilltrees