/// scr_player_attack()

// Make the player attack if the corresponding input has been given
if (iAttack)
{
	// Set the gunImageIndex to match the shooting image
	gunImageIndex = 1;

	// Instantiate a bullet and set its direction to face towards the mouse
	var dir = point_direction(x, y, mouse_x, mouse_y);
	var obj = instance_create_layer(x, y, "Bullets", obj_bullet);
	obj.direction = dir;

	// Set the gun reset alarm
	alarm[0] = 3;	
}
