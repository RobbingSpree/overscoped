image_speed = 0; //Just to stop the skill trying to animate

// Initialise some things we will overwrite in obj_jobspawner
jobname = 0;    // We don’t use this but this could be drawn next to or on mouse over to show the player the name of the skill
jobid = 0;    // this is the unique id of this skill
jobid = instance_number(obj_job)-1;
jobneeds = -1; // this will be an array holding the unique id of any skill requiered before getting this one
needcount = 0;    // this will basically hold array_length_1d(jobneeds) so we dont have to do it every frame

linetox[0] = 0;    // this will be an array of where to draw every line coming out of this skill
linetoy[0] = 0;

status = 0;    // 0 = unavailable, 1 = available, 2 = equipped
//status = global.unlocks[jobid];

jobname = 0; 

for (var k=0; k<array_length_2d(obj_jobspawner.jobneeds,obj_jobspawner.i); k++)
{
	jobneeds[k] = obj_jobspawner.jobneeds[obj_jobspawner.i,k];
	//show_debug_message("Job "+ string(newskill.jobname)+" needs " + string(jobneeds[k]));
	if jobneeds[k] == -1 //-1 means always avaliable, draw line to root node
	{
		linetox[0] = obj_jobspawner.x;
		linetoy[0] = obj_jobspawner.y;
		needcount=1;
	} else { // on the new skill record where its lines should be drawn so we don’t need to look it up every frame
              
        linetox[k] = obj_jobspawner.x + obj_jobspawner.jobx[jobneeds[k]];
        linetoy[k] = obj_jobspawner.y + obj_jobspawner.joby[jobneeds[k]];
                
        needcount++;
    }
}