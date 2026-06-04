draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(FontSmall);

gpu_set_texfilter(true) // Fixes ugly texts

draw_set_color(c_yellow);
draw_text_transformed(x, y, GetRandomFlavorText(randomText), 0.7, 0.7, angle);


gpu_set_texfilter(false)
draw_set_halign(fa_left);
draw_set_valign(fa_top);