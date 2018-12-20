/// scr_player_reset

/* Reset the player back to default (for respawning)
Reset the player gun slots */
gunDurability[0] = 0;
gunDurability[1] = 100;
gunDurability[2] = 0;
gunDurability[3] = 0;
gunDurability[4] = 0;
gunDurability[5] = 0;

// Set the currently selected slot back to 0
gunSlot = 1;

// Tell the player that it is currently not burning
isBurning = false;

// Restore the playerHp
hp = maxHp;
