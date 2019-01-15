// Change the alpha of the area
if (areaAlphaUp)
{
	if (areaAlpha <= areaAlphaMax - areaAlphaSpeed)
		areaAlpha += areaAlphaSpeed;
	else
	{
		areaAlpha = areaAlphaMax;
		areaAlphaUp = false;
	}
}
else
{
	if (areaAlpha >= areaAlphaMin + areaAlphaSpeed)
		areaAlpha -= areaAlphaSpeed;
	else
	{
		areaAlpha = areaAlphaMin;
		areaAlphaUp = true;
	}
}
