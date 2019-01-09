// Move towards the player
var dist = distance_to_point(obj_player.x, obj_player.y);
move_towards_point(obj_player.x, obj_player.y, (dist * .2) + obj_player.movementSpeed + .25)

// Add to the players health and destroy itself
if (dist <= 1)
{
	if (obj_player.hp <= obj_player.maxHp - (obj_player.maxHp * hpPercentage))
		obj_player.hp += obj_player.maxHp * hpPercentage;
	else
		obj_player.hp = obj_player.maxHp;
	
	instance_destroy();	
}
