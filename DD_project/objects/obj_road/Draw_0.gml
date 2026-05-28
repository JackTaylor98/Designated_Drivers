if (obj_levelmanager.playing)
{
	var w = room_width;
	var h = room_height;

	var center = w * 0.5;

	// makes sky
	draw_set_color(make_color_rgb(20, 30, 80));
	draw_rectangle(0, 0, w, h, false);

	// makes grass
	draw_set_color(make_color_rgb(30, 70, 30));
	draw_rectangle(0, horizon, room_width, room_height, false);

	// road
	for (var i = horizon; i < room_height; i += 2)
	{
	    var p = i / h;

		//road width first value is the top width and the other is the bottom width
	    var road_width = lerp(1, 3000, p);


		// left and right side of the road centered around the middle
	    var left = center - road_width * 0.5;
	    var right = center + road_width * 0.5;
		//divides the lanes (makes the line closer together)
		var lane = road_width / 40;

		// this is a road piece
	    draw_set_color(make_color_rgb(60, 60, 60));
	    draw_rectangle(left, i, right, i + 2, false);

	    // white lines
		var left_edge  = center - road_width * 0.5;
		var right_edge = center + road_width * 0.5;

		var mid_left   = center - lane * 0.5;
		var mid_right  = center + lane * 0.5;
		//line_offset = makes them move 
		//div 20 = groups pixels into chunks
		//mod 2 = alternates on/off

	    if (((i - line_offset) div 20) mod 2 == 0)
	    {
	        draw_set_color(c_white);


			draw_rectangle(mid_left - 2, i, mid_left + 2, i + 8, false);
			draw_rectangle(mid_right - 2, i, mid_right + 2, i + 8, false);
		
	        draw_rectangle(left_edge - 2, i, left_edge + 2, i + 8, false);
			draw_rectangle(right_edge - 2, i, right_edge + 2, i + 8, false);
	    }

	}
}
