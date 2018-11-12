// Check for clients and data
var type_event = async_load[? "type"]; // Check what event type is occuring

// Scroll through the different possible event types
switch (type_event)
{
	// A client is attempting to connect
	case network_type_connect:
		// Add the client to the socket variable
		for (var i = 0; i <= maxClients - 1; i++)
		{
			if (socket[i] == noone)
			{
				// Grab the ID of the socket attempting to connect
				socket[i] = async_load[? "socket"]
				
				// Assign a unique client ID to the connecting client
				buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
				buffer_write(buffer, buffer_u8, 0);
				buffer_write(buffer, buffer_u8, i + 1);

				// Send the buffer to the server
				network_send_packet(socket[i], buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
				
				// Break out of the for loop
				break;
			}
		}
		break;
		
	// A client has disconnected
	case network_type_disconnect:
		// Scroll through the clients and remove each one
		for (var i = 0; i <= maxClients - i; i++)
			socket[i] = noone; // Remove the client from the socket variable
		break;
		
	// Data is being received
	case network_type_data:
		// Prepare the received data
		var _buffer = async_load[? "buffer"]; // Grab the received data
		buffer_seek(_buffer, buffer_seek_start, 0) // Make sure the server reads the received data from the start
		scr_received_packet(_buffer); // Handle the received and prepared data
		break;
}
