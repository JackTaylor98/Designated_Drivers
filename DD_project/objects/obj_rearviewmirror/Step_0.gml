// Keeps obj centered on the obj_car
x = obj_car.x;
y = obj_car.y - (obj_car.sprite_height/2) + 20;

// This takes priority over everything as its a indication of a lose state
if (obj_car.x < (room_width/2)-400 || obj_car.x > (room_width/2)+400) {state = "CrashPanic";} 

switch (state)
{
	case "Calm":
	{
		sprite_index = spr_Rearview_mirror_idle;
		if (obj_bugmoth.state = "Flying") {state = "BugPanic";}
		if (obj_phone.calling) {state = "PhoneCall";}
		break;
	}
	case "CrashPanic":
	{
		sprite_index = spr_Rearview_mirror_panic;
		if (obj_car.x > (room_width/2)-400 && obj_car.x < (room_width/2)+400) {state = "Calm";}
		break;
	}
	case "BugPanic":
	{
		sprite_index = spr_Rearview_mirror_bugpanic;
		if (obj_bugmoth.state != "Flying") {state = "Calm";}
		break;
	}
	case "PhoneCall":
	{
		sprite_index = spr_Rearview_mirror_phonecall;
		if (!obj_phone.calling) {state = "Calm";}
		if (obj_phone.entertainmentIncrease) {state = "AnswerPhone";}
		break;
	}
	case "AnswerPhone":
	{
		sprite_index = spr_Rearview_mirror_answerphone;
		if (!obj_phone.entertainmentIncrease) {state = "Calm";}
		break;
	}
}