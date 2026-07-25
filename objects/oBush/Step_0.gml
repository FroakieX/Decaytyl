if point_distance(x, y, oPlayer.x, oPlayer.y) < 60
{
	if die_blend <= 255
	{
		die_blend += 1;
		image_blend = make_colour_hsv(255 - die_blend, 255 - die_blend, 255 - die_blend);
	}
	else
	{
		image_index = 1;
		image_blend = -1;
	}
}

