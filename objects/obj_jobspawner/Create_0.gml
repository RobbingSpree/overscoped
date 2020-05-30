/// @description 

job_board_initalize();

for (i=0; i<array_length_1d(jobname); i++)
{
	var newskill = instance_create_layer(jobx[i],joby[i],"Instances",obj_job);
	newskill.image_index = jobimage[i];
	newskill.jobname = jobname[i];
	newskill.jobid=i;
	
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
				status = 1;
				linetox[0] = obj_jobspawner.x;
				linetoy[0] = obj_jobspawner.y;
				needcount=1;
			} else { // on the new skill record where its lines should be drawn so we don’t need to look it up every frame
              
                linetox[k] = other.jobx[jobneeds[k]];
                linetoy[k] = other.joby[jobneeds[k]];
                
                needcount++;
            }
		}
	}
}
//http://www.davetech.co.uk/gamemakercomplexskilltrees