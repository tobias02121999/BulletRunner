// Lerp towards a position behind the player
var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) + directionOffset;
var targetX = obj_player.x + lengthdir_x(-distanceFromPlayer, dir);
var targetY = obj_player.y + lengthdir_y(-distanceFromPlayer, dir);
var dist = distance_to_point(targetX, targetY);

move_towards_point(targetX, targetY, dist * lerpPercentage);

// Set 
var hpPercentage = obj_player.hp / obj_player.maxHp;

if (hpPercentage <= .5)
	image_index = 0;

if (hpPercentage > .5 && hpPercentage <= .85)
	image_index = 1;

if (hpPercentage > .85)
	image_index = 2;
