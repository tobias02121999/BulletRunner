// Draw the player
draw_self();

// Draw the gun
var dir = point_direction(x, y, mouse_x, mouse_y);
var scaleY;

if (dir >= 90 && dir < 270)
	scaleY = -1;
else
	scaleY = 1;

draw_sprite_ext(spr_pistol, gunImageIndex, x, y, 1, scaleY, dir, c_white, 1);
