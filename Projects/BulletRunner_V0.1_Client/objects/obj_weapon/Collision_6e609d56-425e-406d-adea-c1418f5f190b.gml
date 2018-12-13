// Update the player gunId (equip the weapon)
for (var i = 0; i < obj_player.gunSlotAmount; i++)
{
	if (obj_player.gunId[i] == gunId)
	{
		pickupCheck = false;
		obj_player.gunDurability[i] = gunDurabilityMax;
		break;
	}
}

if (pickupCheck)
{
	for (var i = 0; i < obj_player.gunSlotAmount; i++)
	{
		if (obj_player.gunId[i] == -1)
		{
			obj_player.gunId[i] = gunId;
			obj_player.gunDurability[i] = gunDurabilityMax;
			break;	
		}
	}
}

// Destroy the weapon
instance_destroy();
