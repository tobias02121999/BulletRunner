// Check for clients and data
var type_event = async_load[? "type"]; // Check what event type is occuring

// Check if data is being received
if (type_event == network_type_data)
{
	// Prepare the received data
	var buffer = async_load[? "buffer"]; // Grab the received data
	buffer_seek(buffer, buffer_seek_start, 0) // Make sure the server reads the received data from the start
	scr_received_packet(buffer); // Handle the received and prepared data
}
