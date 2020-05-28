/// @description 

job_board_initalize();

for (i=0; i<array_length_1d(skillname); i++)
{
	var newskill = instance_create_layer(skillx[i],skilly[i],"Instances",obj_skill);
	newskill.image_index = skillimage;
	newskill.skillname = skillname[i];
	newskill.skillid=i;
	
	show_debug_message("We have made Job" + string(skillname[i]));
	
	//assert - the object has been made
	
	with(newskill) //now we want to pre-solve the connections and store them so we're not solving them each frame
	{
		for (k=0; k<array_length_2d(other.skillneeds,other.k); k++)
		{
			skillneeds[k] = other.skillneeds[other.i,k];
			show_debug_message("Job "+ string(newskill.skillname)+" needs " + string(skillneeds[j]));
			if skillneeds[j] == -1 //-1 means always avaliable, draw line to root node
			{
				status = 1;
				linetox[0] = obj_skillspawner.x;
				linetoy[0] = obj_skillspawner.y;
				needcount=1;
			}
		}
	}
}
//http://www.davetech.co.uk/gamemakercomplexskilltrees