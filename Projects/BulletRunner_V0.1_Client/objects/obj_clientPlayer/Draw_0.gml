// Set the scale for the gun sprite
var scaleY;

if (gunDirection >= 90 && gunDirection < 270)
	scaleY = -1;
else
	scaleY = 1;

// Draw the gun sprite behind the clientPlayer
if (gunDirection >= 0 && gunDirection < 180)
	draw_sprite_ext(gunSprite, gunImageIndex, x, y, 1, scaleY, gunDirection, c_white, 1);

// Draw the clientPlayer
draw_self();

// Draw the gun sprite in front of the clientPlayer
if (!(gunDirection >= 0 && gunDirection < 180))
	draw_sprite_ext(gunSprite, gunImageIndex, x, y, 1, scaleY, gunDirection, c_white, 1);

// Draw the client username above the clientPlayer
draw_set_halign(fa_center);
draw_text_transformed(x, y - 16, username, .25, .25, 0);

// Set the draw settings back to default
draw_set_halign(fa_left);
