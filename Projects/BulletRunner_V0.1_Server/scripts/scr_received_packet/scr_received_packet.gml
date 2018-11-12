/// scr_received_packet(buffer)

// Store the given arguments in temporary variables
var _buffer = argument0;

// Grab the ID of the received buffer
var _message_id = buffer_read(_buffer, buffer_u8);

// Switch through the different buffer types and handle the received data
switch (_message_id)
{
	case 1: // Instantiate a click at the mouse position
		// Grab the buffer data
		var ID = buffer_read(_buffer, buffer_u8);
		var posX = buffer_read(_buffer, buffer_u16);
		var posY = buffer_read(_buffer, buffer_u16);
		var spriteId = buffer_read(_buffer, buffer_u8);
		var img = buffer_read(_buffer, buffer_u8);
		var xScale = buffer_read(_buffer, buffer_s8);
		var dir = buffer_read(_buffer, buffer_u16);
		var gunId = buffer_read(_buffer, buffer_u8);
		var gunImgIndex = buffer_read(_buffer, buffer_u8);
		
		/* Send the buffer data to all other clients
		Write the data to the buffer */
		buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
		buffer_write(_buffer, buffer_u8, _message_id); // 
		buffer_write(_buffer, buffer_u16, posX);
		buffer_write(_buffer, buffer_u16, posY);
		buffer_write(_buffer, buffer_u8, spriteId);
		buffer_write(_buffer, buffer_u8, img);
		buffer_write(_buffer, buffer_s8, xScale);
		buffer_write(_buffer, buffer_u16, dir);
		buffer_write(_buffer, buffer_u8, gunId);
		buffer_write(_buffer, buffer_u8, gunImgIndex);

		// Send the buffer to the other clients
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (i != ID - 1)
				network_send_packet(socket[i], _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
		}
		break;
		
	case 2:
		// Grab the buffer data
		var ID = buffer_read(_buffer, buffer_u8);
		var dir = buffer_read(_buffer, buffer_u16);
		
		/* Send the buffer data to all other clients
		Write the data to the buffer */
		buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
		buffer_write(_buffer, buffer_u8, _message_id); // 
		buffer_write(_buffer, buffer_u16, dir);
		
		// Send the buffer to the other clients
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (i != ID - 1)
				network_send_packet(socket[i], _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
		}
		break;
		
	case 3:
		// Grab the buffer data
		var ID = buffer_read(_buffer, buffer_u8);
		var gunId = buffer_read(_buffer, buffer_u8);
		var posX = buffer_read(_buffer, buffer_u16);
		var posY = buffer_read(_buffer, buffer_u16);
		
		/* Send the buffer data to all other clients
		Write the data to the buffer */
		buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
		buffer_write(_buffer, buffer_u8, _message_id); //
		buffer_write(_buffer, buffer_u8, gunId);
		buffer_write(_buffer, buffer_u16, posX);
		buffer_write(_buffer, buffer_u16, posY);
		
		// Send the buffer to the other clients
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (i != ID - 1)
				network_send_packet(socket[i], _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
		}
		break;
		
	case 5:
		// Grab the buffer data
		var ID = buffer_read(_buffer, buffer_u8);
		var username = buffer_read(_buffer, buffer_string);
		var matchScore = buffer_read(_buffer, buffer_u8);
		
		/* Send the buffer data to all other clients
		Write the data to the buffer */
		buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
		buffer_write(_buffer, buffer_u8, _message_id); //
		buffer_write(_buffer, buffer_string, username);
		buffer_write(_buffer, buffer_u8, matchScore);
		
		// Send the buffer to the other clients
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (i != ID - 1)
				network_send_packet(socket[i], _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
		}
		break;
}
