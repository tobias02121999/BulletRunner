/// scr_player_reel(reelSpeed)

// Store the given arguments in temporary variables
var _reelSpeed = argument0;

// Move the player towards the reel point
var dir = point_direction(x, y, reelPositionX, reelPositionY);
var lenX = lengthdir_x(_reelSpeed, dir);
var lenY = lengthdir_y(_reelSpeed, dir);

var dist = distance_to_point(reelPositionX, reelPositionY);

if (dist >= _reelSpeed / 2)
{
	x += lenX;
	y += lenY;
}
else // Reset the playerstate back to default once the point has been reached
	playerState = "DEFAULT";
