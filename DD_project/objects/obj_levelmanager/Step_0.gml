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
				PlayLevel1Audio()
				PlayCarAudio()
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(false, false); // Sets up required obstacles
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
				PlayLevel2Audio()
				PlayCarAudio()
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(true, false);
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
	case 3: // Level 3. Driving + Bug
	{
		if (playing)
		{
			if (!levelTimerReset)
			{
				LevelReset()
				PlayLevel3Audio()
				PlayCarAudio()
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(false, true);
			if (levelTimer >= level3Length)
			{
				playing = false;
				levelTimerReset = false;
				levelTimer = 0;
				ShowGameOverScreen(true);
			}
		}
		break;
	}
	case 4:
	{
		if (playing)
		{
			if (!levelTimerReset)
			{
				LevelReset()
				PlayCarAudio()
				levelTimer = 0;
				levelTimerReset = true;
			}
			levelTimer++;
			LevelSetUp(true, true);
			if (levelTimer >= level4Length)
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