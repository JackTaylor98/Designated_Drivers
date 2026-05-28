if (obj_levelmanager.playing)
{
	if(canDrive) //Will be toggled for certain distractions
	{
		if (keyboard_check_direct(vk_right) ||
		   (keyboard_check(ord("D")))) // Turn left
		{
			x += turningForce;
			turnLeft = true;
		}
		else {turnLeft = false}

		if (keyboard_check_direct(vk_left) ||
		   (keyboard_check(ord("A")))) // Turn right
		{
			x -= turningForce;
			turnRight = true;
		}
		else {turnRight = false}
	}

	// Logic for random pulling left/right
	timeUntilPulltimer++
	if (timeUntilPulltimer >= timeUntilPull) {pulling = true;} // Timer that sets pulling to true
	if (pulling)
	{
		if (pullLeft){x -= pullForce} // Pulls car left or right
		else{x += pullForce}
	
		pullingTimer++
		if (pullingTimer >= timeUntilStopPull) // Pull finished and variables are reset
		{
			timeUntilPulltimer = 0;
			timeUntilPull = irandom_range(1,2)*60
		
			pullingTimer = 0;
			timeUntilStopPull = irandom_range(4,8)*60
		
			pullLeft = irandom_range(0, 1);
			pullForce = random_range(1, 2.5);
			pulling = false;
		}
	}

	// Turns steering wheel left/right when driving
	with (obj_wheel) 
		{
			if (obj_car.turnLeft) {direction -= obj_car.turningForce}
			else if (obj_car.turnRight) {direction += obj_car.turningForce}
			else {direction = 0}
		}
		
	// Checks for player driving to far left / right
	CheckLossCondition(); 
}