if(obj_levelmanager.currentLevel == 2)
{
if(obj_phone.phoneActive)
{
	x = obj_car.x - 230;
	y = 870;
}

with(obj_phone)
{
	if(!returning && !calling)
	{
		if (mouse_check_button_pressed(mb_left))
		{
			 if (point_in_rectangle(mouse_x, mouse_y, other.bbox_left, other.bbox_top, 
				other.bbox_right, other.bbox_bottom))
			 {
				 if(!other.doomscrolling)
				 {
					other.doomscrolling = true;
					entertainmentIncrease = true;
					other.image_index = 1;
				 }
				 else
				 {
					other.doomscrolling = false;
					entertainmentIncrease = false;
					travelTime = 0;
					returning = true;
					other.image_index = 0;
				 }
			 }
		}
	}
}

with (obj_phone)
{
	if (other.doomscrolling == true)
	{
		phoneTimer = phoneTimer;
		
		obj_phoneDecline.visible = false;
		obj_phonePickUp.visible = false;
		obj_phonePickUp.disableCollision = true;
		obj_phoneDecline.disableCollision = true;
			
		obj_car.canDrive = false;
		travelTime += delta_time / 1000000;

		//t handles travel time logic
		var t = travelTime / travelDuration;
		t = clamp(t, 0, 1);

		//Bezier controlY point (anchor)
		var controlY = endY - 150;

		//Quadratic bezier //May change to cubic bezier in the future to make it look even smoother
		y =
		 power(1 - t, 2) * startY +
		 2 * (1 - t) * t * controlY +
		 power(t, 2) * endY;
			 
		image_index = 2;
	}
}	
}
else
{
	x = 8000;
	y = 8000;
}
