// Initialize the blood rain variables
spawnRadiusXfrom = 32;
spawnRadiusYfrom = 32;
spawnRadiusXto = 32;
spawnRadiusYto = 32;
spawnAmountMin = 15;
spawnAmountMax = 25;
spawnFrequencyMin = 5;
spawnFrequencyMax = 10;
height = 32;
speed = .5;

// Set the spawn alarm
alarm[0] = random_range(spawnFrequencyMin, spawnFrequencyMax);

// Follow the path
path_start(pt_bloodRain_dungeon, speed, path_action_restart, true);
