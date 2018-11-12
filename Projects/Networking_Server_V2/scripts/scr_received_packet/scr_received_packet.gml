/// scr_received_packet(buffer)

// Store the given arguments in temporary variables
var buffer = argument0;

// Grab the ID of the received buffer
var message_id = buffer_read(buffer, buffer_u8);

// Switch through the different buffer types and handle the received data
switch (message_id)
{
	case 1: // Instantiate a click at the mouse position
		// Grab the buffer data
		var ID = buffer_read(buffer, buffer_u8);
		var mx = buffer_read(buffer, buffer_u16);
		var my = buffer_read(buffer, buffer_u16);
		
		/* Send the buffer data to all other clients
		Write the data to the buffer */
		buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
		buffer_write(buffer, buffer_u8, message_id); // 1
		buffer_write(buffer, buffer_u16, mx); // 1, mouse_x
		buffer_write(buffer, buffer_u16, my); // 1, mouse_x, mouse_y

		// Send the buffer to the other clients
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (i != ID - 1)
				network_send_packet(socket[i], buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
		}
		break;
}
