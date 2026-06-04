if(obj_phone.phoneActive)
{
	var percent = clamp(obj_phone.entertainmentCurrent/obj_phone.entertainmentMax, 0, 1);

	var entertainmentFront = spr_entertainmentFront;
	var entertainmentBack = spr_entertainmentBack;
	var fullW = sprite_get_width(entertainmentFront);
	var fullH = sprite_get_height(entertainmentFront);
	var ox = sprite_get_xoffset(entertainmentFront);
	var oy = sprite_get_yoffset(entertainmentFront);
	var visibleH = fullH * percent;

	if(visibleH >= 0)
	{
		draw_sprite_ext(entertainmentBack, 1, 1000, 750, 6, 6, 0, c_white, 1)
		draw_sprite_part_ext(entertainmentFront, 1, 0, fullH - visibleH, fullW, visibleH,
		1000 - (ox*6), 750 - (oy*6) + ((fullH - visibleH) * 6),
		6, 6, c_white, 1);
	}
}
