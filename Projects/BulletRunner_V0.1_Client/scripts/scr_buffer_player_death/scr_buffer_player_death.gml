/// scr_buffer_player_death()

// Initialize the buffer variables
var _buffer = obj_client.buffer;
var _clientId = obj_client.clientId;
var _socket = obj_client.socket;

// Write the data to the buffer
buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(_buffer, buffer_u8, 6); // The data case ID
buffer_write(_buffer, buffer_u8, _clientId); // The unique client ID
buffer_write(_buffer, buffer_u16, x);
buffer_write(_buffer, buffer_u16, y);
buffer_write(_buffer, buffer_u8, scr_system_spriteId(true, 0)); // The bullet direction of the fired bullet
buffer_write(_buffer, buffer_s8, image_xscale);

// Send the buffer to the server
network_send_packet(_socket, _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
