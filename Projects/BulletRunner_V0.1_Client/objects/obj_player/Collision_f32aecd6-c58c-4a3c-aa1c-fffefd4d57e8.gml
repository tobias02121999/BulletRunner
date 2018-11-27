// If the bullet is from enemy origin
if (!other.isAllied && playerState != "DIE")
{
	if (other.direction >= 90 && other.direction < 270)
		bulletHitDirection = 1;
	else
		bulletHitDirection = -1;
	
	// Reduce the playerHealth
	hp -= other.damage;
	
	// Tell the player that they are slowed down (if applicable)
	if (other.applySlowing)
	{
		isSlowed = true;
		alarm[3] = other.slowingDuration;
	}

	// Destroy the bullet
	with (other) instance_destroy();
}
