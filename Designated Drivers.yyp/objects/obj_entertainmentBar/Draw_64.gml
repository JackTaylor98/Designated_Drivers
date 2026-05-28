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
	draw_sprite_ext(entertainmentBack, 1, 1200, 955, 8, 8, 0, c_white, 1)
	draw_sprite_part_ext(entertainmentFront, 1, 0, fullH - visibleH, fullW, visibleH,
		1200 - (ox*8), 955 - (oy*8) + ((fullH - visibleH) * 8),
		8, 8, c_white, 1);
}