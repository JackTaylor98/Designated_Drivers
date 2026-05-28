draw_self()

draw_set_font(FontSmall)
switch (Button_ID)
{
	case "Replay":
	{
		draw_text(x+5,y,"Replay")
		break;
	}
	case "Quit":
	{
		draw_text(x+5,y,"Quit")
		break;
	}
	case "NextLevel":
	{
		draw_text(x+5,y,"Next Level")
		break;
	}
}