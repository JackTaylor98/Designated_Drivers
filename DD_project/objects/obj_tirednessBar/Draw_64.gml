if (obj_levelmanager.currentLevel != 1)
{
	var percent = clamp(tiredCurrent/tiredMax, 0, 1);

	var tirednessFront = spr_tirednessFront;
	var tirednessBack = spr_tirednessBack;
	var fullW = sprite_get_width(tirednessFront);
	var fullH = sprite_get_height(tirednessFront);
	var ox = sprite_get_xoffset(tirednessFront);
	var oy = sprite_get_yoffset(tirednessFront);
	var visibleH = fullH * percent;
/*
	if(visibleH >= 0)
	{
		draw_sprite_ext(tirednessBack, 1, 1100, 750, 6, 6, 0, c_white, 1)
		draw_sprite_part_ext(tirednessFront, 1, 0, fullH - visibleH, fullW, visibleH,
		1100 - (ox*6), 750 - (oy*6) + ((fullH - visibleH) * 6),
		6, 6, c_white, 1);
	}
*/
	if(visibleH >= 0)
	{
		draw_sprite_ext(tirednessBack, 1, 685, 595, 2, 2, 0, c_white, 1)
		draw_sprite_part_ext(tirednessFront, 1, 0, fullH - visibleH, fullW, visibleH,
		685 - (ox*2), 595 - (oy*2) + ((fullH - visibleH) * 2),
		2, 2, c_white, 1);
	}
}
