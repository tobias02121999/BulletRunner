// Calculate the direction and scale for the gun sprite
var dir = point_direction(x, y, mouse_x, mouse_y);
var scaleY;

if (dir >= 90 && dir < 270)
	scaleY = -1;
else
	scaleY = 1;

// Draw the gun sprite behind the player
if (dir >= 0 && dir < 180 && drawGun)
	draw_sprite_ext(spr_pistol, gunImageIndex, x, y, 1, scaleY, dir, c_white, 1);

// Draw the player
draw_self();

// Draw the gun sprite in front of the player
if (!(dir >= 0 && dir < 180) && drawGun)
	draw_sprite_ext(spr_pistol, gunImageIndex, x, y, 1, scaleY, dir, c_white, 1);

// Draw the playerState (debug)
draw_text(mouse_x, mouse_y, playerState);
