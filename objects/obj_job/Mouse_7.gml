if (status == 1) { // You can only buy this skill if it is available

    // add any code here for buying the skill, i.e. you might have to deduct money or skill points
	if global.current_job != jobid
	{
		status = 2 // set this skill as being bought
		obj_jobspawner.j_board[global.current_job].status = 1; //update display status of current job
		global.unlocks[jobid]=2; //update persistant list of job status
		global.current_job = jobid; //change player variable for current job
	}
    with(obj_job) { // go through all skills and see if they should now be set to available
  
        // Set skills I link to as available
        for (i=0; i<needcount; i++) {
            if (jobneeds[i] == other.jobid) {
                if (status == 0) { // dont overwrite if they have already bought upgrade
                    status = 1 // This skill is next to me on the tree and is unavailable so make it available.
                }
            }
        };
      
        // Set skills that link to me as available
        for (i=0; i<other.needcount; i++) { // go backwards down the tree
            if (other.jobneeds[i] == jobid) {
                if (status == 0) { // dont overwrite if they have already bought upgrade
                    status = 1 // This skill is next to me on the tree and is unavailable so make it available.
                }
            }
        }

    }
  
    // add any code here to save the changes
  
}