PlayMenuMusic()
if (ButtonClickedOn())
{
	audio_stop_sound(snd_menuMusic)
	PlayButtonSound()
	room_goto(Room1)
	if instance_exists(obj_levelmanager)
	{
		obj_levelmanager.playing = true;
	}
}