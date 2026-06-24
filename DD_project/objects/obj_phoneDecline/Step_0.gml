if(!disableCollision)
{
	if (mouse_check_button_pressed(mb_left))
	{
		//all this does is check if you click the bounds of the button, then set returning to true
		// the bezier logic is handled within the phone
		if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
		{
			disableCollision = true;
			obj_phonePickUp.disableCollision = true;
			with (obj_phone)
			{
				travelTime = 0;
				returning = true;
			}
			visible = false;
			obj_phonePickUp.visible = false;
		}
	}	
}