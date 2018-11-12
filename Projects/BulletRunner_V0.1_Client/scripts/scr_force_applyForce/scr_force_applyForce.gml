/// scr_force_applyForce()

if (movementSpeedHorizontal > 0)
{
	for (var i = movementSpeedHorizontal; i > 0; i--)
	{
		if (place_free(x + i, y))
		{
			x += i;
			break;	
		}
	}
}

if (movementSpeedHorizontal < 0)
{
	for (var i = movementSpeedHorizontal; i < 0; i++)
	{
		if (place_free(x + i, y))
		{
			x += i;
			break;
		}
	}
}

if (movementSpeedVertical > 0)
{
	for (var i = movementSpeedVertical; i > 0; i--)
	{
		if (place_free(x, y + i))
		{
			y += i;
			break;
		}
	}
}

if (movementSpeedVertical < 0)
{
	for (var i = movementSpeedVertical; i < 0; i++)
	{
		if (place_free(x, y + i))
		{
			y += i;
			break;
		}
	}
}
