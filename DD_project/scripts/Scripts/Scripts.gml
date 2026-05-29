function GetRandomCarSnd(_randomCar)
{
	// Make sure the random number rolls high
	// enough for each case
	switch (_randomCar)
	{
		case 1: {return snd_crash1; break;}
		case 2: {return snd_crash2; break;}
		case 3: {return snd_crash3; break;}
		case 4: {return snd_crash4; break;}
		case 5: {return snd_crash5; break;}
	}
}

function CheckLossCondition() // Function for checking if player loses
{
	boundry = 800; // How far left or right from the center the player can drive before gameover
	if (obj_car.x < (room_width/2)-boundry || obj_car.x > (room_width/2)+boundry || obj_phone.entertainmentCurrent <= 0)
	{
		// Resets variables for level manager
		obj_levelmanager.playing = false;
		obj_levelmanager.levelTimerReset = false;
		obj_levelmanager.levelTimer = 0;
		ShowGameOverScreen(false);
		audio_play_sound(GetRandomCarSnd(irandom_range(1,5)), 1, false)
	}
}

function ShowGameOverScreen(_playerWon)
{
	// Sets text on banner to player won/lost
	if (_playerWon){obj_banner.playerWon = true}
	else{obj_banner.playerWon = false}
	
	with (obj_gameoverbutton) // Hides next level button if player fails level
	{
		if (Button_ID == "NextLevel" && _playerWon == false) {visible = false}
		else {visible = true}
	}
	
	with (obj_banner) // Sets banner to middle of screen
	{
		yLocation = obj_car.sprite_height/2;
		xLocation = obj_car.sprite_width/2;
		x = obj_car.x - xLocation/2;
		y = obj_car.y - yLocation/2;
	}
}

function LevelSetUp(_phone) // Set up for the levelmanager
{
	if (_phone) {obj_phone.phoneActive = true;}
}

function LevelReset() // Set up for the levelmanager
{
	// Resets all obstacles to false so the 
	// levelsetup() can set the required
	// obstacles to true
	obj_phone.phoneActive = false;
}