if (bugActive)
{
	switch (state)
	{
		case "WaitingToFlyIn":
		{
			timer++
			if (timer >= timeUntilFlyIn)
			{
				timer = 0;
				state = "Flying";
			}
			break;
		}
		case "Flying":
		{
			x = clamp(x, obj_car.x - 700,obj_car.x + 700)
			sine = SineWave(sine, 0.1,15);
			y = y+sine;
		
			switch (leftRight) // Controls left right movement
			{
				case "Left":
				{
					if (x < obj_car.x) {leftRight = "Right";}
					else {x -= leftRightSpeed}
					break;				
				}
				case "Right":
				{
					if (x > obj_car.x + 699) {leftRight = "Left";}
					else {x += leftRightSpeed}
					break;
				}
			}
			if (ButtonClickedOnHeld()) {state = "PlayerHoldingBug";}
			break;
		}
		case "PlayerHoldingBug":
		{
			if (ButtonClickedOnHeld())
			{
				x = mouse_x;
				y = mouse_y;
				if (x >= obj_car.x+750) 
				{
					x = startingPosition;
					state = "WaitingToFlyIn";
				}
			}
			else {state = "Flying";}
			break;
		}
	}
} 

PlayBugSound();