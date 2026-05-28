if (currentLevel > amountOfLevels) {currentLevel = 1;} // Loops currently available levels
switch (currentLevel)
{
	case 1: // Level 1. Just driving
	{
		if (playing)
		{
			if (!levelTimerReset) // Sets up length of level
			{
				LevelReset() // Disables all obstacles
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(false); // Sets up required obstacles
			if (levelTimer >= level1Length) // Level finished
			{
				playing = false;
				levelTimerReset = false;
				levelTimer = 0;
				ShowGameOverScreen(true);
			}
		}
		break;
	}
	case 2: // Level 2. Driving + Phone
	{
		if (playing)
		{
			if (!levelTimerReset)
			{
				LevelReset()
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(true);
			if (levelTimer >= level2Length)
			{
				playing = false;
				levelTimerReset = false;
				levelTimer = 0;
				ShowGameOverScreen(true);
			}
		}
		break;
	}
}