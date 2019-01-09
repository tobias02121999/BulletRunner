/// scr_player_hit(destroyBullet)

// Store the given arguments in temporary variables
var _destroyBullet = argument0;

// If the bullet is from enemy origin
if (!other.isAllied && playerState != "DIE" && playerState != "DODGE" && playerState != "LEAP")
{
	if (other.direction >= 90 && other.direction < 270)
		bulletHitDirection = 1;
	else
		bulletHitDirection = -1;
		
	// Spawn the blood objects
	var rand = round(random_range(5, 20));
	for (var i = 0; i < rand; i++)
	{
		var int = instance_create_layer(x, y, "Effects", obj_blood);
		int.direction = other.direction + random_range(-25, 25);
	}
	
	// Reduce the playerHealth
	hp -= other.damage;
	
	// Tell the player that they are slowed down (if applicable)
	if (other.applySlowing)
	{
		isSlowed = true;
		alarm[3] = other.slowingDuration;
	}
	
	// Apply the knockback
	knockbackX = lengthdir_x(other.knockback, other.direction);
	knockbackY = lengthdir_y(other.knockback, other.direction);

	// Destroy the bullet
	if (_destroyBullet)
		with (other) instance_destroy();
}
