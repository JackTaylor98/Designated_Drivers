switch (state)
{
	case "Right":
	{
		angle += textRotateSpeed
		if (angle == 0) {angle = 0.1} // Fixes weird stutter bug
		if (angle > maxAngleRotation) {state = "Left"}
		break;
	}
	case "Left":
	{
		angle -= textRotateSpeed
		if (angle == 0) {angle = -0.1}
		if (angle < -maxAngleRotation) {state = "Right"}
		break;
	}
}