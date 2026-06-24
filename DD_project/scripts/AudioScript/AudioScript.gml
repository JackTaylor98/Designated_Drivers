function PlayLevel1Audio()
{
	audio_play_sound(snd_introRadio,10,false);
}

function PlayCarAudio()
{
	audio_play_sound(snd_car,10,true);
}
function PlayLevel2Audio()
{
	audio_play_sound(snd_radioTrack2,10,false);
}
function PlayLevel3Audio()
{
	audio_play_sound(snd_radioTrack3,10,false);
}
function PlayLevel4Audio()
{
	audio_play_sound(snd_radioTrack4,10,false);
}

// plays sound when object is on screen stops when off screen
function PlayBugSound()
{
    var cam = view_camera[0];

    var onScreen =
        x > camera_get_view_x(cam) &&
        x < camera_get_view_x(cam) + camera_get_view_width(cam) &&
        y > camera_get_view_y(cam) &&
        y < camera_get_view_y(cam) + camera_get_view_height(cam);

    if (onScreen)
    {
        if (!audio_is_playing(buzzSound))
        {
            buzzSound = audio_play_sound(snd_buzzing, 10, true);
        }
    }
    else
    {
        if (audio_is_playing(buzzSound))
        {
            audio_stop_sound(buzzSound);
        }
    }
}

function PlayButtonSound()
{
	audio_play_sound(snd_button,1,false);
}

function PlayhitSfx()
{
	audio_play_sound(snd_hit,1,false);
}

// if the music isnt playing start playing it
function PlayMenuMusic()
{
    if (menuMusic == noone)
    {
        menuMusic = audio_play_sound(snd_menuMusic, 10, true);
    }
}
