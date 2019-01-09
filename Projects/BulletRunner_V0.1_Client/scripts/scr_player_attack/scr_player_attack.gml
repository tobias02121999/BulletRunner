/// scr_player_attack()

// Make the player attack if the corresponding input has been given and the weapon has reloaded
if (((iAttack && !gunIsAutomatic) or (iAttackHold && gunIsAutomatic)) && alarm[2] <= 0 && gunDurability[gunSlot] > 0)
{
	// Set the gunImageIndex to match the shooting image
	gunImageIndex = 1;

	var dir = point_direction(x, y, mouse_x, mouse_y);

	// Instantiate a bullet and set its direction to face towards the mouse
	for (var i = 0; i < gunBulletAmount; i++)
	{
		var obj = instance_create_layer(x, y, "Bullets", obj_bullet);
		var offset = random_range(-gunAccuracy, gunAccuracy);
		
		obj.direction = dir + offset;
		obj.range = gunRange;
		obj.sprite_index = gunBulletSprite;
		obj.speed = gunBulletSpeed;
		obj.explodeOnDestroy = gunBulletExplodeOnDestroy;
		obj.destroyOnMousePosition = gunBulletDestroyOnMousePosition;
		obj.drawRope = gunBulletDrawRope;
		obj.reelOnDestroy = gunBulletReelOnDestroy;
		obj.applySlowing = gunBulletApplySlowing;
		obj.slowingDuration = gunBulletSlowingDuration;
		obj.ricochet = gunBulletRicochet;
		obj.line = gunBulletLine;
		obj.knockback = gunKnockback;
		
		// Buffer
		scr_buffer_player_attack(obj.direction);
	}
	
	audio_play_sound(aud_machineGun, 0, false);
	
	// Apply knockback to the player
	knockbackX = lengthdir_x(gunRecoil, dir + 180);
	knockbackY = lengthdir_y(gunRecoil, dir + 180);
	
	// Make the camera shake
	obj_cameraPlayer.shakeIntensity = gunShakeIntensity;
	obj_cameraPlayer.alarm[0] = 5;

	// Set the gun reset alarm
	alarm[0] = gunResetAlarm;
	
	// Set the gun reload alarm
	alarm[2] = gunReloadDuration;
	
	// Decrease the durability value of the currently equiped gun
	gunDurability[gunSlot] -= 1;
}
