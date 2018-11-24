// Spawn the explosion effect (if it's applicable)
if (explodeOnDestroy)
{
	var obj = instance_create_layer(x, y, "Effects", obj_explosion);
	obj.isAllied = isAllied;
}

if (reelOnDestroy && range > 1)
{
	if (isAllied)
	{
		obj_player.playerState = "REEL";
		obj_player.reelPositionX = x;
		obj_player.reelPositionY = y;
	}
}
