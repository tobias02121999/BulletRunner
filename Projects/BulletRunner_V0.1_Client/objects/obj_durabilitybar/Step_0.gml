// Lerp towards a position behind the player
var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) + directionOffset;
var targetX = obj_player.x + lengthdir_x(-distanceFromPlayer, dir);
var targetY = obj_player.y + lengthdir_y(-distanceFromPlayer, dir);
var dist = distance_to_point(targetX, targetY);

move_towards_point(targetX, targetY, dist * lerpPercentage);

// Set 
var durabilityPercentage = obj_player.gunDurability[obj_player.gunSlot] / obj_player.gunDurabilityMax;

if (durabilityPercentage <= .125)
	image_index = 0;

if (durabilityPercentage > .125 && durabilityPercentage <= .250)
	image_index = 1;

if (durabilityPercentage > .250 && durabilityPercentage <= .375)
	image_index = 2;

if (durabilityPercentage > .375 && durabilityPercentage <= .500)
	image_index = 3;

if (durabilityPercentage > .500 && durabilityPercentage <= .625)
	image_index = 4;

if (durabilityPercentage > .625 && durabilityPercentage <= .750)
	image_index = 5;

if (durabilityPercentage > .750 && durabilityPercentage <= .875)
	image_index = 6;

if (durabilityPercentage > .875 && durabilityPercentage <= 1)
	image_index = 7;

//
if (obj_player.gunDurability[obj_player.gunSlot] <= 0)
	visible = false;
else
	visible = true;
