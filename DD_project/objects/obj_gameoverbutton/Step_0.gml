switch (Button_ID)
{
	case "Replay":
	{
		x = obj_banner.x + obj_banner.sprite_width/2-250
		y = obj_banner.y + 120
		if (ButtonClickedOn())
		{
			PlayButtonSound()
			obj_car.x = room_width/2;
			obj_levelmanager.playing = true;
			obj_tirednessBar.tiredCurrent = obj_tirednessBar.tiredMax;
			obj_distractionBar.distractionCurrent = 1;
			obj_doomscroll.image_index = 0;
			obj_doomscroll.doomscrolling = false;
			obj_phone.entertainmentCurrent = obj_phone.entertainmentMax;
			obj_phone.returning = true;
			obj_bugmoth.x = 4800; obj_bugmoth.y = 440;
			obj_phone.calling = false;
			audio_play_sound(snd_car,1,true);
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
		x = obj_banner.x + obj_banner.sprite_width/2+250
		y = obj_banner.y + 120
		if (ButtonClickedOn())
		{
			PlayButtonSound()
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
		x = obj_banner.x + obj_banner.sprite_width/2
		y = obj_banner.y + 120
		if (ButtonClickedOn())
		{
			if (obj_levelmanager.currentLevel <= 3)
			{
				PlayButtonSound()
				obj_car.x = room_width/2;
				obj_tirednessBar.tiredCurrent = obj_tirednessBar.tiredMax;
				obj_distractionBar.distractionCurrent = 1;
				obj_phone.entertainmentCurrent = obj_phone.entertainmentMax;
				obj_bugmoth.x = 4800; obj_bugmoth.y = 440;
				obj_levelmanager.currentLevel++;
				obj_levelmanager.playing = true;
				obj_phone.calling = false;
				audio_play_sound(snd_car,1,true);
				with (obj_banner) // Hides banner
				{
					x = room_width*2;
					y = room_height*2;
				}
			}
			else
			{
				PlayButtonSound()
				obj_logo.hasWon = true;
				room_goto(RoomMainMenu);
				with (obj_banner) // Hides banner
				{
					x = room_width*2;
					y = room_height*2;
				}
			}
		}
		break;
	}
}