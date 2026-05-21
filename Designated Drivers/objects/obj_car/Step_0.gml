if (keyboard_check_direct(vk_right)) // Turn left
{
	x += turningForce;
	turnLeft = true;
}
else {turnLeft = false}

if (keyboard_check_direct(vk_left)) // Turn right
{
	x -= turningForce;
	turnRight = true;
}
else {turnRight = false}

with (obj_wheel) // Spin wheel
{
	if (obj_car.turnLeft) {direction -= obj_car.turningForce}
	else if (obj_car.turnRight) {direction += obj_car.turningForce}
	else {direction = 0}
}

CheckLossCondition();