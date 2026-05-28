if (ButtonClickedOn())
{
	room_goto(Room1)
	if instance_exists(obj_levelmanager)
	{
		obj_levelmanager.playing = true;
	}
}