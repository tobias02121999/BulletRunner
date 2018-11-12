/// scr_system_getSpriteId(getId, requestedId)

// Store the given arguments in temporary variables
var _getId = argument0;
var _requestedId = argument1;

// Return the current player sprite ID (if requested)
if (_getId)
{
	switch (sprite_index)
	{
		case spr_jack_idle:
			return 0;
			break;
		
		case spr_jack_run:
			return 1;
			break;
		
		case spr_jack_dodge:
			return 2;
			break;
		
		case spr_jack_slide:
			return 3;
			break;
		
		case spr_jack_crouch:
			return 4;
			break;
		
		case spr_jack_jump:
			return 5;
			break;
	}
}
else
{	// Return the sprite based on the given sprite ID (if requested)
	switch (_requestedId)
	{
		case 0:
			return spr_jack_idle;
			break;
			
		case 1:
			return spr_jack_run;
			break;
			
		case 2:
			return spr_jack_dodge;
			break;
			
		case 3:
			return spr_jack_slide;
			break;
			
		case 4:
			return spr_jack_crouch;
			break;
			
		case 5:
			return spr_jack_jump;
			break;
	}
}
