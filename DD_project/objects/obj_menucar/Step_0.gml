switch (state)
{
	case "Parked":
	{
		timer++;
		if (timer >= timeTillDrive)
		{
			timer = 0;
			timeTillDrive = random_range(1,4)*60;
			carSpeed = irandom_range(10,20);
			state = "Drive";
		}
		break;
	}
	case "Drive":
	{
		y -= carSpeed;
		if (y <= endLocation)
		{
			randomDistanceFromX = irandom_range(-180,150);
			x = startingLocationX + randomDistanceFromX;
			y = startingLocationY; // Puts car back at bottom below screen
			state = "Respray";
		}
		break;
	}
	case "Respray":
	{
		randomColor = irandom_range(1,5);
		switch (randomColor)
		{
			case 1: {sprite_index = spr_blue_car; break;}
			case 2: {sprite_index = spr_green_car; break;}
			case 3: {sprite_index = spr_orange_car; break;}
			case 4: {sprite_index = spr_purple_car; break;}
			case 5: {sprite_index = spr_red_car; break;}
		}
		state = "Parked";
		break;
	}
}