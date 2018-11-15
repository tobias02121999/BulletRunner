/// scr_player_animation()

// Set the sprite based on if the player is moving
if (playerState == "DODGE" or playerState == "LEAP")
{
	sprite_index = spr_jack_dodge;
	drawGun = true;
}

if (playerState == "SLIDE")
{
	sprite_index = spr_jack_slide;
	drawGun = true;
}
	
if (playerState == "CROUCHING")
{
	sprite_index = spr_jack_crouch;
	drawGun = true;
}
	
if (playerState == "JUMP")
{
	sprite_index = spr_jack_jump;
	drawGun = false;
}

if (playerState == "DIE")
{
	image_xscale = bulletHitDirection;
	drawGun = false;
}

if (playerState == "DEFAULT")
{
	// Set the image xScale based on the players aiming direction
	var dir = point_direction(x, y, mouse_x, mouse_y);
	if (dir >= 90 && dir < 270)
		image_xscale = -1;
	else
		image_xscale = 1;
	
	if (isMoving)
	{
		if (facingDirection == image_xscale)
			sprite_index = spr_jack_run;
		else
			sprite_index = spr_jack_back;
	}
	else
		sprite_index = spr_jack_idle;
		
	drawGun = true;
}
else
{
	if (playerState != "DIE")
	{
		// Set the image xScale based on the players facing direction
		image_xscale = facingDirection;
	}
}
