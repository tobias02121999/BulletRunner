//
draw_sprite_ext(spr_UI_border, 0, -1, -1, image_xscale, image_yscale, 0, c_white, 1);

var gunSlotsX = 110;
var gunSlotsDistance = 25;

for (var i = 0; i < obj_player.gunSlotAmount; i++)
{
	var slotIndex;
	if (obj_player.gunSlot == i)
		slotIndex = 1;
	else
		slotIndex = 0;
	
	draw_sprite_ext(spr_UI_gunSlot, slotIndex, (gunSlotsX + (gunSlotsDistance * i)) * image_xscale, 13 * image_yscale, image_xscale, image_yscale, 0, c_white, 1);
	
	if (obj_player.gunId[i] != -1)
	{
		var gunSprite = scr_system_spriteId(false, obj_player.gunId[i] + 9);
		draw_sprite_ext(gunSprite, 0, (gunSlotsX + (gunSlotsDistance * i)) * image_xscale, 13 * image_yscale, image_xscale, image_yscale, 0, c_white, 1);
	}
}

// Display a message to notify players that the match isn't full yet and is on hold for more players
if (!obj_client.matchIsFull)
	draw_text(16, 16, "Waiting for more players to join . . .");

// Draw the playerscores (together with their usernames) to the screen if the match has started
if (obj_client.matchIsFull && keyboard_check(vk_tab))
{
	draw_text(16, 16, obj_client.username + ": " + string(obj_client.matchScore));
	draw_text(16, 32, obj_clientPlayer.username + ": " + string(obj_clientPlayer.matchScore));
		
	// Reset the draw options back to default
	draw_set_halign(fa_left);
}
