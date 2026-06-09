if (obj_bugmoth.bugActive == true
	&& obj_bugmoth.state == "Flying")
{
	distractionCurrent += distractionIncreaseRate;
	distractionBarActive = true;
}
else if(distractionCurrent != 0)
{
	distractionCurrent -= distractionDropRate;	
	distractionBarActive = false;
}

if (distractionCurrent <= 0)
distractionCurrent = 0;