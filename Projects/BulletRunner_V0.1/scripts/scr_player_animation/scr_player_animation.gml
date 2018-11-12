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
	
if (playerState == "DEFAULT")
{
	if (isMoving)
		sprite_index = spr_jack_run;
	else
		sprite_index = spr_jack_idle;
		
	drawGun = true;
}
	
// Set the image xScale based on the players facing direction
image_xscale = facingDirection;
