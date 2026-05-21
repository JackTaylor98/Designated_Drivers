function CheckLossCondition() // Function for the win/lose 
{
	if (obj_car.x < 200 || obj_car.x > 1800)
	{
		show_debug_message("Game over!");
	}
}