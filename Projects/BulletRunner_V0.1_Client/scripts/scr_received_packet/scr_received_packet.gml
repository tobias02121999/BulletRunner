/// scr_received_packet(buffer)

// Store the given arguments in temporary variables
var _buffer = argument0;

// Grab the ID of the received buffer
var _message_id = buffer_read(_buffer, buffer_u8);

// Switch through the different buffer types and handle the received data
switch (_message_id)
{
	case 0: // Assign a unique ID to the client
		// Grab the buffer data
		var ID = buffer_read(_buffer, buffer_u8);
		
		// Set the unique ID
		obj_client.clientId = ID;
		break;
	
	case 1: // Instantiate a click at the mouse position
		// Grab the buffer data
		var posX = buffer_read(_buffer, buffer_u16);
		var posY = buffer_read(_buffer, buffer_u16);
		var spriteId = buffer_read(_buffer, buffer_u8);
		var img = buffer_read(_buffer, buffer_u8);
		var xScale = buffer_read(_buffer, buffer_s8);
		var dir = buffer_read(_buffer, buffer_u16);
		var gunId = buffer_read(_buffer, buffer_u8);
		var gunImgIndex = buffer_read(_buffer, buffer_u8);
		
		// Move the client player around
		obj_clientPlayer.targetX = posX;
		obj_clientPlayer.targetY = posY;
		obj_clientPlayer.sprite_index = scr_system_spriteId(false, spriteId);
		obj_clientPlayer.image_index = img;
		obj_clientPlayer.image_xscale = xScale;
		obj_clientPlayer.gunDirection = dir;
		obj_clientPlayer.gunId = gunId;
		obj_clientPlayer.gunImageIndex = gunImgIndex;
		break;
		
	case 2:
		// Grab the buffer data
		var dir = buffer_read(_buffer, buffer_u16);
	
		// Instantiate a bullet
		for (var i = 0; i < obj_clientPlayer.gunBulletAmount; i++)
		{
			var obj = instance_create_layer(obj_clientPlayer.x, obj_clientPlayer.y, "Bullets", obj_bullet);
			obj.direction = dir;
			obj.range = obj_clientPlayer.gunRange;
			obj.isAllied = false;
			obj.damage = obj_clientPlayer.gunDamage;
			obj.sprite_index = obj_clientPlayer.gunBulletSprite;
			obj.speed = obj_clientPlayer.gunBulletSpeed;
		}
		break;
		
	case 3:
		// Grab the buffer data
		var gunId = buffer_read(_buffer, buffer_u8);
		var posX = buffer_read(_buffer, buffer_u16);
		var posY = buffer_read(_buffer, buffer_u16);
		
		// Instantiate the weapon
		var obj = instance_create_layer(posX, posY, "Items", obj_weapon);
		obj.gunId = gunId;
		break;
		
	case 4:
		// Tell the client that the match is full
		obj_client.matchIsFull = true;
		break;
		
	case 5:
		// Grab the buffer data
		var username = buffer_read(_buffer, buffer_string);
		var matchScore = buffer_read(_buffer, buffer_u8);
		
		// Set the clientPlayers username and matchScore
		obj_clientPlayer.username = username;
		obj_client.matchScore = matchScore;
		break;
}
