/// scr_player_attack()

// Make the player attack if the corresponding input has been given and the weapon has reloaded
if (iAttack && alarm[2] <= 0)
{
	// Set the gunImageIndex to match the shooting image
	gunImageIndex = 1;

	// Instantiate a bullet and set its direction to face towards the mouse
	for (var i = 0; i < gunBulletAmount; i++)
	{
		var obj = instance_create_layer(x, y, "Bullets", obj_bullet);
		var dir = point_direction(x, y, mouse_x, mouse_y);
		var offset = random_range(-gunAccuracy, gunAccuracy);
		
		obj.direction = dir + offset;
		obj.range = gunRange;
		obj.sprite_index = gunBulletSprite;
		obj.speed = gunBulletSpeed;
		obj.explodeOnDestroy = gunBulletExplodeOnDestroy;
		obj.destroyOnMousePosition = gunBulletDestroyOnMousePosition;
		obj.drawRope = gunBulletDrawRope;
		obj.reelOnDestroy = gunBulletReelOnDestroy;
		
		// Buffer
		scr_buffer_player_attack(obj.direction);
	}

	// Set the gun reset alarm
	alarm[0] = gunResetAlarm;
	
	// Set the gun reload alarm
	alarm[2] = gunReloadDuration;
}
