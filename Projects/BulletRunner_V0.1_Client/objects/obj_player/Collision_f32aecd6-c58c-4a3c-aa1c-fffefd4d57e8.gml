// If the bullet is from enemy origin
if (!other.isAllied)
{
	// Reduce the playerHealth
	hp -= other.damage;

	// Destroy the bullet
	with (other) instance_destroy();
}
