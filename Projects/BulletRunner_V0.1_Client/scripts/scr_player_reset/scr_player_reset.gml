/// scr_player_reset

/* Reset the player back to default (for respawning)
Reset the player gun slots (leave him with only a pistol) */
gunId[0] = 0;
gunId[1] = -1;
gunId[2] = -1;
gunId[3] = -1;
gunId[4] = -1;
gunId[5] = -1;
gunId[6] = -1;
gunId[7] = -1;
gunId[8] = -1;

// Set the currently selected slot back to 0
gunSlot = 0;

// Tell the player that it is currently not burning
isBurning = false;

// Restore the playerHp
hp = maxHp;
