// Check for clients and data
var type_event = async_load[? "type"]; // Check what event type is occuring

// Scroll through the different possible event types
switch (type_event)
{
	// A client is attempting to connect
	case network_type_connect:
		// Add the client to the socket variable
		if (socket == noone)
			socket = async_load[? "socket"] // Grab the ID of the socket attempting to connect
		break;
		
	// A client has disconnected
	case network_type_disconnect:
		socket = noone; // Remove the client from the socket variable
		break;
		
	// Data is being received
	case network_type_data:
		// Prepare the received data
		var buffer = async_load[? "buffer"]; // Grab the received data
		buffer_seek(buffer, buffer_seek_start, 0) // Make sure the server reads the received data from the start
		scr_received_packet(buffer); // Handle the received and prepared data
		break;
}
