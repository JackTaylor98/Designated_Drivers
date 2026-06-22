switch (obj_levelmanager.currentLevel)
{
    //Level 2
    case 2:
    {
        if (obj_phone.phoneActive && obj_doomscroll.doomscrolling)
        {
            tiredCurrent += tiredIncreaseRate;
        }
		if (obj_phone.phoneActive && obj_phone.calling)
		{
			tiredCurrent += tiredIncreaseRate;
		}
        else if (obj_entertainmentBar.barEmpty)
        {
            tiredCurrent -= tiredDroprate;
		}
        break;
	}
    //Level 3
    case 3:
    {
        if (obj_bugmoth.state == "Flying")
        {
            tiredCurrent += tiredIncreaseRate;
        }
        else
        {
            tiredCurrent -= tiredDroprate;
        }

        break;
    }

    //Level 4
    case 4:
    {
        var rate = 0;

        if (obj_bugmoth.state == "Flying")
        {
            rate += tiredIncreaseRate;
        }
        if (obj_phone.phoneActive && obj_doomscroll.doomscrolling)
        {
            rate += tiredIncreaseRate;
        }
		if (obj_phone.phoneActive && obj_phone.calling)
        {
            rate += tiredIncreaseRate;
        }
        if (obj_entertainmentBar.barEmpty && obj_bugmoth.state != "Flying")
        {
            rate -= tiredDroprate;
		}
        tiredCurrent += rate;
        break;
    }
}

tiredCurrent = clamp(tiredCurrent, 0, tiredMax);

