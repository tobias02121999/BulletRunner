/// scr_player_fall(fallingSpeed)

// Store the given arguments in temporary variables
var _fallingSpd = argument0;

// 
image_xscale -= _fallingSpd * sign(image_xscale);
image_yscale -= _fallingSpd * sign(image_yscale);

if (abs(image_xscale) <= .1)
{
	image_xscale = 1;
	image_yscale = 1;

	// Respawn the player
	playerSpawned = false;
	playerState = "DEFAULT";
}
