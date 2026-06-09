if (obj_phone.phoneActive == true && 
obj_entertainmentBar.barEmpty == true)
{
	tiredCurrent -= tiredDroprate;	
}
else if (obj_bugmoth.state == "Flying")
{
	tiredCurrent += tiredIncreaseRate;
}
else if (obj_distractionBar.distractionBarActive == false
		&& obj_phone.phoneActive == false)
{
	tiredCurrent -= tiredDroprate;
}
else
{
	tiredCurrent = tiredCurrent;	
}

