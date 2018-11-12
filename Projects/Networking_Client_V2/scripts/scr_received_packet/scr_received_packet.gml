/// scr_received_packet(buffer)

// Store the given arguments in temporary variables
var buffer = argument0;

// Grab the ID of the received buffer
var message_id = buffer_read(buffer, buffer_u8);

// Switch through the different buffer types and handle the received data
switch (message_id)
{
	case 0: // Assign a unique ID to the client
		// Grab the buffer data
		var ID = buffer_read(buffer, buffer_u8);
		
		// Set the unique ID
		obj_client.clientId = ID;
		break;
	
	case 1: // Instantiate a click at the mouse position
		// Grab the buffer data
		var mx = buffer_read(buffer, buffer_u16);
		var my = buffer_read(buffer, buffer_u16);
		
		// Instantiate the click
		instance_create_layer(mx, my, "Instances", obj_click);
		break;
}

