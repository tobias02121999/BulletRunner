/// scr_buffer_player_attack(bulletDirection)

// Store the given arguments in temporary variables
var _bulletDirection = argument0;

// Initialize the buffer variables
var _buffer = obj_client.buffer;
var _clientId = obj_client.clientId;
var _socket = obj_client.socket;

// Write the data to the buffer
buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(_buffer, buffer_u8, 2); // The data case ID
buffer_write(_buffer, buffer_u8, _clientId); // The unique client ID
buffer_write(_buffer, buffer_u16, _bulletDirection); // The bullet direction of the fired bullet

// Send the buffer to the server
network_send_packet(_socket, _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
