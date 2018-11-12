// Set the players ID
playerId = 0;

// Initialize the player variables
scr_player_initialize(playerId);

// Spawn the playerShadow
var obj = instance_create_layer(0, 0, "Effects", obj_shadow);
obj.targetObject = self;
obj.offsetY = 16;
