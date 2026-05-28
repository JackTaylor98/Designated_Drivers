switch (Button_ID)
{
	case "Replay":
	{
		x = obj_banner.x + 50
		y = obj_banner.y + 90
		if (ButtonClickedOn())
		{
			obj_car.x = room_width/2;
			obj_levelmanager.playing = true;
			with (obj_banner) // Hides banner
			{
				x = room_width*2
				y = room_height*2	
			}
		}
		break;
	}
	case "Quit":
	{
		x = obj_banner.x + 350
		y = obj_banner.y + 90
		if (ButtonClickedOn())
		{
			room_goto(RoomMainMenu)
			with (obj_banner) // Hides banner
			{
				x = room_width*2
				y = room_height*2	
			}
		}
		break;
	}
	case "NextLevel":
	{
		x = obj_banner.x + 650
		y = obj_banner.y + 90
		if (ButtonClickedOn())
		{
			obj_car.x = room_width/2;
			obj_levelmanager.currentLevel++;
			obj_levelmanager.playing = true;
			with (obj_banner) // Hides banner
			{
				x = room_width*2
				y = room_height*2	
			}
		}
		break;
	}
}