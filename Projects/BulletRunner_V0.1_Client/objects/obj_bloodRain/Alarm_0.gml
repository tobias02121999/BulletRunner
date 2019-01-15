// Spawn blood drops
var rand = random_range(spawnAmountMin, spawnAmountMax);
for (i = 0; i < rand; i++)
{
	var posX = random_range(x - spawnRadiusXfrom, x + spawnRadiusXto);
	var posY = random_range(y - spawnRadiusYfrom, y + spawnRadiusYto);
	
	var obj = instance_create_layer(posX, posY, "BloodRain", obj_bloodDrop);
	obj.fallDistance = height;
}

// Set the spawn alarm
alarm[0] = random_range(spawnFrequencyMin, spawnFrequencyMax);
