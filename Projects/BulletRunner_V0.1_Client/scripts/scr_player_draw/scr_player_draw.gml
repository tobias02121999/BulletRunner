/// scr_player_draw()

// Draw the reel rope towards the reel point
if (playerState == "REEL")
	draw_line_width_color(obj_player.x, obj_player.y, reelPositionX, reelPositionY, 1, c_dkgray, c_dkgray);

// Calculate the direction and scale for the gun sprite
var dir = point_direction(x, y, mouse_x, mouse_y);
var scaleY;

if (dir >= 90 && dir < 270)
	scaleY = -1;
else
	scaleY = 1;

// Draw the gun sprite behind the player
if (dir >= 0 && dir < 180 && drawGun)
	draw_sprite_ext(gunSprite, gunImageIndex, x, y, 1, scaleY, dir, c_white, 1);

// Draw the player
draw_self();

// Draw fire on top of the player if they are burning
if (isBurning)
{
	if (fireIndex >= sprite_get_number(spr_fire) - 1)
		fireIndex = 0;
	else
		fireIndex += sprite_get_speed(spr_fire) / room_speed;
		
	draw_sprite_ext(spr_fireEntity, round(fireIndex), x, y + 6, image_xscale, 1, 0, c_white, .75);
}

// Draw the gun sprite in front of the player
if (!(dir >= 0 && dir < 180) && drawGun)
	draw_sprite_ext(gunSprite, gunImageIndex, x, y, 1, scaleY, dir, c_white, 1);

// Draw the client username above the player
draw_set_halign(fa_center);
draw_text_transformed(x, y - 16, obj_client.username, .25, .25, 0);

// Set the draw settings back to default
draw_set_halign(fa_left);
