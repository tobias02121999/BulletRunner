/// scr_player_animation()

// Set the sprite based on if the player is moving
if (playerState == "DODGE" or playerState == "LEAP")
{
	sprite_index = spr_jack_dodge;
	drawGun = true;
	
	// Spawn ghosts
	instance_create_layer(x, y, "Instances", obj_ghost);
}

if (playerState == "SLIDE")
{
	sprite_index = spr_jack_slide;
	drawGun = true;
	
	// Spawn ghosts
	instance_create_layer(x, y, "Instances", obj_ghost);
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
	
	// Spawn ghosts
	instance_create_layer(x, y, "Instances", obj_ghost);
}

if (playerState == "REEL")
{
	sprite_index = spr_jack_slide;
	drawGun = true;
	
	// Spawn ghosts
	instance_create_layer(x, y, "Instances", obj_ghost);
}

if (playerState == "DIE")
{
	image_xscale = bulletHitDirection;
	drawGun = false;
}

if (playerState == "HITPAUSE")
{
	sprite_index = spr_jack_crouch;
	drawGun = false;
}

if (playerState == "FALL")
{
	sprite_index = spr_jack_fall;
	drawGun = false;
}

if (playerState == "DAB")
{
	sprite_index = spr_jack_dab;	
	drawGun = false;
	obj_cameraPlayer.shakeIntensity = 5;
	obj_cameraPlayer.alarm[0] = 5;
	
	if (!audio_is_playing(aud_dab))
		audio_play_sound(aud_dab, 0, false);
}

if (playerState != "FALL")
{
	if (playerState == "DEFAULT" or playerState == "REEL")
	{
		// Set the image xScale based on the players aiming direction
		var dir = point_direction(x, y, mouse_x, mouse_y);
		if (dir >= 90 && dir < 270)
			image_xscale = -1;
		else
			image_xscale = 1;
	
		if (playerState == "DEFAULT")
		{
			if (isMoving)
			{
				if (facingDirection == image_xscale)
					sprite_index = spr_jack_run;
				else
					sprite_index = spr_jack_back;
			}
			else
				sprite_index = spr_jack_idle;
		}
		
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
}
