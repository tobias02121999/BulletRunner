//
var gunSlotsX = 110;
var gunSlotsDistance = 25;

for (var i = 0; i < obj_player.gunSlotAmount; i++)
{
	var slotIndex;
	if (obj_player.gunSlot == i)
		slotIndex = 1;
	else
		slotIndex = 0;
	
	draw_sprite_ext(spr_UI_gunSlot, slotIndex, (gunSlotsX + (gunSlotsDistance * i)) * image_xscale, 13 * image_yscale, image_xscale, image_yscale, 0, c_white, gunSlotAlpha);
	
	if (obj_player.gunId[i] != -1)
	{
		var gunSprite = scr_system_spriteId(false, obj_player.gunId[i] + 9);
		draw_sprite_ext(gunSprite, 0, (gunSlotsX + (gunSlotsDistance * i)) * image_xscale, 13 * image_yscale, image_xscale, image_yscale, 0, c_white, gunSlotAlpha);
	}
}

if (obj_client.matchIsWon)
{
	draw_set_halign(fa_center);
	
	if (obj_client.winner == obj_client.clientId)
		draw_text(720, 405, string(obj_client.username) + " won the match!!!");
	else
		draw_text(720, 405, string(obj_clientPlayer.username) + " won the match!!!");
		
	draw_set_halign(fa_left);
}
else
{
	// Display a message to notify players that the match isn't full yet and is on hold for more players
	if (!obj_client.matchIsFull)
		draw_text(16, 16, "Waiting for more players to join . . .");

	// Draw the playerscores (together with their usernames) to the screen if the match has started
	if (obj_client.matchIsFull)
	{
		if (round(countdown / 100) <= 0)
		{
			draw_text(16, 16, obj_client.username + ": " + string(obj_client.matchScore));
			draw_text(16, 32, obj_clientPlayer.username + ": " + string(obj_clientPlayer.matchScore));
			obj_client.matchIsActive = true;
		}
		else
		{
			draw_text(16, 16, "Match starts in " + string(round(countdown / 100)) + " . . .");
			countdown -= 2;
		}
	}
}

// 
showWeaponReel = keyboard_check(vk_tab);

if (showWeaponReel)
{
	if (!mouseIsCentered)
	{
		window_mouse_set(window_get_width() / 2, window_get_height() / 2);
		mouseIsCentered = true;
	}
	
	var dir, index, slot;
	
	dir = point_direction(x, y, mouse_x, mouse_y);
	index = 0;

	if (dir >= 30 && dir < 90)
		index = 1;
		
	if (dir >= 90 && dir < 150)
		index = 2;
		
	if (dir >= 150 && dir < 210)
		index = 3;
		
	if (dir >= 210 && dir < 270)
		index = 4;
	
	if (dir >= 270 && dir < 330)
		index = 5;
	
	draw_sprite_ext(spr_weaponreel, index, 720, 405, image_xscale * 1.25, image_yscale * 1.25, 0, c_white, .8);
	
	for (var i = 0; i < obj_player.gunSlotAmount; i++)
	{
		if (obj_player.gunDurability[i] <= 0)
			draw_sprite_ext(spr_weaponreel_cross, i, 720, 405, image_xscale * 1.25, image_yscale * 1.25, 0, c_white, 1);
	}
		
	draw_sprite_ext(spr_durabilitybar, obj_durabilitybar.image_index, 720, 405, image_xscale * 1.5, image_yscale * 1.5, 0, c_white, 1);
	
	// 
	obj_player.gunSlot = index;
}
else
	mouseIsCentered = false;
	
draw_sprite_ext(spr_distortion, distortionIndex, 0, 0, image_xscale * 1.6, image_yscale * 1.6, 0, c_white, .05 + ((1 - obj_player.hp / obj_player.maxHp) / 2));
draw_sprite_ext(spr_vignette, 0, 0, 0, image_xscale * 1.6, image_yscale * 1.6, 0, c_white, .05 + (1 - obj_player.hp / obj_player.maxHp));
