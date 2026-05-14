if (keyboard_check_pressed("A")) // Turn left
{
	x -= turningForce;
	turnLeft = true;
}
else {turnLeft = false}

if (keyboard_check_pressed("A")) // Turn right
{
	x += turningForce;
	turnRight = true;
}
else {turnRight = false}

with (obj_wheel) // Spin wheel
{
	if (turnLeft) {direction -= obj_car.turningForce}
	else if (turnRight) {direction += obj_car.turningForce}
	else {direction = 0}
}

CheckLossCondition();