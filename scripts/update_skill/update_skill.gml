function update_skill(argument0) {

	if argument0 == all
	{
		for(var i=0; i<8; i++)
		{
			if skill[i].change_skill_to!=-1
			{
				skill[i].skill=skill[i].change_skill_to;
				skill[i].change_skill_to=-1;
			}
		}
	}
	else //just update one skill
	{
		var target_skill = argument0;
		if skill[target_skill].change_skill_to!=-1
			{
				skill[target_skill].skill=skill[target_skill].change_skill_to;
				skill[target_skill].change_skill_to=-1;
			}
	}


}
