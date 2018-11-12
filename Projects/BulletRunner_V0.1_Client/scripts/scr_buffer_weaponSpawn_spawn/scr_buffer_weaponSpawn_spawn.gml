/// scr_buffer_weaponSpawn_spawn(gunId)

// Store the given arguments in temporary variables
var _gunId = argument0;

// Initialize the buffer variables
var _buffer = obj_client.buffer;
var _clientId = obj_client.clientId;
var _socket = obj_client.socket;

// Write the data to the buffer
buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(_buffer, buffer_u8, 3); // The data case ID
buffer_write(_buffer, buffer_u8, _clientId); // The unique client ID
buffer_write(_buffer, buffer_u8, _gunId); // The gunId of the spawned gun
buffer_write(_buffer, buffer_u16, x); // The X position of the spawned gun
buffer_write(_buffer, buffer_u16, y); // The Y position of the spawned gun

// Send the buffer to the server
network_send_packet(_socket, _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
