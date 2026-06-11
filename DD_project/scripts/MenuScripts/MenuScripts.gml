function GetRandomFlavorText(_randomNumber)
{
	// Make sure the random number rolls high
	// enough for each case
	switch (_randomNumber)
	{
		case 1: {return "dihs on the bugs"; break;}
		case 2: {return "99% bug free"; break;}
		case 3: {return "you cant park there sir"; break;}
		case 4: {return "check engine light?\n yeah its still there"; break;}
		case 5: {return "forget thoes filthy\n things you called hands"; break;}
	}
}



function ButtonClickedOn()
{
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id))
	{
		return true;
	}
	else {return false;}
}

function ButtonClickedOnHeld()
{
	if (mouse_check_button(mb_left) && position_meeting(mouse_x, mouse_y, id))
	{
		return true;
	}
	else {return false;}
}