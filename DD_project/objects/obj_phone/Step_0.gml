if (phoneActive && obj_levelmanager.playing)
{
	//Every frame, decrease the phone timer until the event happens
	phoneTimer--;

	if(!entertainmentIncrease)
	{
		entertainmentCurrent -= entertainmentDropRate;
	}
	else if(entertainmentCurrent < entertainmentMax)
	{
		entertainmentCurrent += entertainmentIncreaseRate;	
	}
	
	if(entertainmentCurrent <= 0)
	{
		entertainmentCurrent = 0;	
	}

	//Setting the phone x pos to follow the car
	x = obj_car.x + 250;

	//Setting the buttons to their positions on the phone
	obj_phonePickUp.x = x - 30;
	obj_phonePickUp.y = y + 40;

	obj_phoneDecline.x = x + 30;
	obj_phoneDecline.y = y + 40;

	//if the phone timer has run out, is not returning, and travel time is greater than duration
	// initiate the bezier curve for phone arrival
	if(phoneTimer <= 0 && travelTime < travelDuration && !returning)
	{
		calling = true;
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
	}
	//reverse bezier curve logic
	if (returning)
	{
		calling = false;
	  travelTime += delta_time / 1000000;
	
	  var t = clamp(travelTime / travelDuration, 0, 1);

	  var controlY = returnStartY - 150;

	  y =
	    power(1 - t, 2) * returnStartY +
	    2 * (1 - t) * t * controlY +
		power(t, 2) * returnEndY;
		//if the bezier curve has finished
		if (t >= 1)
		{
			returning = false;
			
			travelTime = 0;
			phoneTimer = irandom_range(minPhoneTimer * 60, maxPhoneTimer * 60);
			y = startY;
			entertainmentIncrease = false;
			obj_doomscroll.doomscrolling = false;
		
			//Reset all the button and sprite changes
			obj_phoneDecline.disableCollision = false;
			obj_phonePickUp.disableCollision = false;
			obj_phoneDecline.visible = true;
			obj_phonePickUp.visible = true;
			obj_car.canDrive = true;
		}
	}
}
if returning {image_index = 1;}

if (obj_doomscroll.doomscrolling) {sprite_index = spr_doomscrolling;}
else {sprite_index = spr_phone; image_index = 1;}


if calling {image_index = 0;}
if obj_phonePickUp.buttonPressed {image_index = 2;}