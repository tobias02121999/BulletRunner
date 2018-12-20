// Notify the clients that the server is full
if (socket[maxClients - 1] != noone)
{
	/* Send the buffer data to all other clients
	Write the data to the buffer */
	buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
	buffer_write(buffer, buffer_u8, 4); //
	
	// Send the buffer to all of the clients
	for (var i = 0; i <= maxClients - 1; i++)
		network_send_packet(socket[i], buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
}

/* Send the scores of the players to the clients
Write the data to the buffer */
buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(buffer, buffer_u8, 8); //
buffer_write(buffer, buffer_u16, socketScore[0]);
buffer_write(buffer, buffer_u16, socketScore[1]);
		
// Send the buffer to the clients
for (var i = 0; i <= maxClients - 1; i++)
	network_send_packet(socket[i], buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer

// Notify the clients that the match has been won (and by who)
for (var i = 0; i <= maxClients - 1; i++)
{
	if (socketScore[i] >= matchGoal)
	{
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, 9);
		buffer_write(buffer, buffer_u8, i + 1);
		
		for (var q = 0; q <= maxClients - 1; q++)
			network_send_packet(socket[q], buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
	}
}
