//
if (line)
{
	draw_set_alpha(image_alpha);
	draw_line_width_color(x, y, targetX, targetY, 1.5, c_yellow, c_red);
	draw_set_alpha(1);
}
else
{
	// Draw a reel rope towards the player
	if (drawRope)
	{
		if (isAllied)
			draw_line_width_color(x, y, obj_player.x, obj_player.y, 1, c_dkgray, c_dkgray);
		else
			draw_line_width_color(x, y, obj_clientPlayer.x, obj_clientPlayer.y, 2, c_dkgray, c_dkgray);
	}

	// Draw the bullet
	draw_self();
}
