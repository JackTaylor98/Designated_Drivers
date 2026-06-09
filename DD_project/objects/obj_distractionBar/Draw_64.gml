if(obj_bugmoth.bugActive == true)
{
	var percent = clamp(distractionCurrent/distractionMax, 0, 1);

	var distractionFront = spr_distractionFront;
	var distractionBack = spr_distractionBack;
	var fullW = sprite_get_width(distractionFront);
	var fullH = sprite_get_height(distractionFront);
	var ox = sprite_get_xoffset(distractionFront);
	var oy = sprite_get_yoffset(distractionFront);
	var visibleH = fullH * percent;

	if(visibleH >= 0)
	{
		draw_sprite_ext(distractionBack, 1, 1200, 750, 6, 6, 0, c_white, 1)
		draw_sprite_part_ext(distractionFront, 1, 0, fullH - visibleH, fullW, visibleH,
		1200 - (ox*6), 750 - (oy*6) + ((fullH - visibleH) * 6),
		6, 6, c_white, 1);
	}
}
