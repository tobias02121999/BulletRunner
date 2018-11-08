/// scr_player_animation()

// Set the sprite based on if the player is moving
if (playerState == "DODGE" or playerState == "LEAP")
	sprite_index = spr_jack_dodge;

if (playerState == "SLIDE")
	sprite_index = spr_jack_slide;
	
if (playerState == "CROUCHING")
	sprite_index = spr_jack_crouch;
	
if (playerState == "JUMP")
	sprite_index = spr_jack_jump;
	
if (playerState == "DEFAULT")
{
	if (isMoving)
		sprite_index = spr_jack_run;
	else
		sprite_index = spr_jack_idle;
}
	
// Set the image xScale based on the players facing direction
image_xscale = facingDirection;
