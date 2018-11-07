/// scr_player_animation()

// Set the sprite based on if the player is moving
if (isMoving)
	sprite_index = spr_jack_run;
else
	sprite_index = spr_jack_idle;
	
// Set the image xScale based on the players facing direction
image_xscale = facingDirection;
