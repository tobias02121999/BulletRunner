// Run the current playerState
scr_player_states(playerState, playerId);

// Send the buffer to the server
scr_buffer_player_main();

// Update the playerSpawn
scr_player_setSpawn();

// Die and respawn
if (hp <= 0 && playerState != "DIE")
{
	image_index = 0;
	sprite_index = choose(spr_jack_die, spr_jack_death_heart);
	playerState = "DIE";
}

// Take fire damage over time
if (isBurning)
	hp -= fireDamage;
	
// Decrease the portalTimer
portalTimer--;

/*
if (gunDurability[gunSlot] <= 0)
	gunId[gunSlot] = -1;
*/

// Set the player angle based on the horizontal player speed
image_angle = -(obj_player.movementSpeedHorizontal + obj_player.knockbackX) * 2;
