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
			
		case spr_jack_die:
			return 6;
			break;
			
		case spr_jack_death_heart:
			return 7;
			break;
			
		case spr_jack_back:
			return 8;
			break;
			
		case spr_pistol_dropped:
			return 9;
			break;
			
		case spr_shotgun_dropped:
			return 10;
			break;
			
		case spr_rpg_dropped:
			return 11;
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
			
		case 6:
			return spr_jack_die;
			break;
		
		case 7:
			return spr_jack_death_heart;
			break;
			
		case 8:
			return spr_jack_back;
			break;
			
		case 9:
			return spr_pistol_dropped;
			break;
			
		case 10:
			return spr_shotgun_dropped;
			break;
			
		case 11:
			return spr_rpg_dropped;
			break;
	}
}
