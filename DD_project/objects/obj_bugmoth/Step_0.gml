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
			if (ButtonClickedOn()) 
			{
				state = "WaitingToFlyIn";
				instance_create_layer(x,y,"Instances",obj_bugseffect);
				PlayhitSfx();
				x = startingPosition;				
			}
			break;
		}
	}
} 
PlayBugSound();