if(!disableCollision)
{
	if (mouse_check_button_pressed(mb_left))
	{
		//all this does is check if you click the bounds of the button, then set returning to true
		// the bezier logic is handled within the phone
	 if (point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom))
		{
			//reset conversation timer, set button pressed to true
			//ensures that no other button on the phone can be pressed at the same time, to prevent
			// closing the phone early, or hanging up halfway through the conversation.
			disableCollision = true;
			obj_phoneDecline.disableCollision = true;
			
			conversationTimer = 5*60;
			buttonPressed = true;
			
			obj_phone.image_index = 1;
			obj_phoneDecline.visible = false;
			visible = false;
		}
	}	
}

//if buttonPressed, the timer ticks down, when it reaches 0, the call is complete
// and the bezier curve for returning happens
if(buttonPressed)
{
	conversationTimer--;
	obj_phone.entertainmentIncrease = true;
	if(conversationTimer <= 0)
	{
		with (obj_phone)
        {
            travelTime = 0;
            returning = true;
        }
		buttonPressed = false;
	}
}