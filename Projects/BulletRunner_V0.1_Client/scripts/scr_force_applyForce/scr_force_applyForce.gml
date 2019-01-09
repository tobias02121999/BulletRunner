/// scr_force_applyForce()

if (movementSpeedHorizontal + knockbackX > 0)
{
	for (var i = movementSpeedHorizontal + knockbackX; i > 0; i--)
	{
		if (place_free(x + i, y))
		{
			x += i;
			break;	
		}
	}
}

if (movementSpeedHorizontal + knockbackX < 0)
{
	for (var i = movementSpeedHorizontal + knockbackX; i < 0; i++)
	{
		if (place_free(x + i, y))
		{
			x += i;
			break;
		}
	}
}

if (movementSpeedVertical + knockbackY > 0)
{
	for (var i = movementSpeedVertical + knockbackY; i > 0; i--)
	{
		if (place_free(x, y + i))
		{
			y += i;
			break;
		}
	}
}

if (movementSpeedVertical + knockbackY < 0)
{
	for (var i = movementSpeedVertical + knockbackY; i < 0; i++)
	{
		if (place_free(x, y + i))
		{
			y += i;
			break;
		}
	}
}
