// Keeps obj centered on the obj_car
x = obj_car.x;
y = obj_car.y - (obj_car.sprite_height/2) + 20;

// Plays panic sprite when to close to bondry
if (obj_car.x < (room_width/2)-400 || obj_car.x > (room_width/2)+400)
{
	//sprite_index = spr_rearviewmirror_panic;
	state = "Panic"
}
else
{
	sprite_index = spr_rearviewmirrorcalm;
	state = "Calm";
}