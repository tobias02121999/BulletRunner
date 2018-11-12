/// scr_player_getDirection()

// Set the players movementDirection based on the given input
if (iMoveLeft)
{
	if (iMoveUp)
		movementDirection = 135;
	else
		if (iMoveDown)
			movementDirection = 225;
		else
			movementDirection = 180;
}

if (iMoveRight)
{
	if (iMoveUp)
		movementDirection = 45;
	else
		if (iMoveDown)
			movementDirection = 315;
		else
			movementDirection = 0;
}

if (!iMoveLeft && !iMoveRight)
{
	if (iMoveUp)
		movementDirection = 90;
	else
		if (iMoveDown)
			movementDirection = 270;
}
