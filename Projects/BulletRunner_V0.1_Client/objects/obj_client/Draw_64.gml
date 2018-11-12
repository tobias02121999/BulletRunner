// Display a message to notify players that the match isn't full yet and is on hold for more players
if (!matchIsFull)
	draw_text(16, 16, "Waiting for more players to join . . .");

// Draw the playerscores (together with their usernames) to the screen if the match has started
if (object_exists(obj_player))
{
	if (matchIsFull && keyboard_check(vk_tab))
	{
		draw_set_halign(fa_right);
		draw_text(16, 16, obj_client.username + ": " + string(obj_client.matchScore));
		draw_text(16, 32, obj_clientPlayer.username + ": " + string(obj_clientPlayer.matchScore));
		
		// Reset the draw options back to default
		draw_set_halign(fa_left);
	}
}
