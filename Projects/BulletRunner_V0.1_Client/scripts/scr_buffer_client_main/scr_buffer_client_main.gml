/// scr_buffer_client_username(username, matchScore)

// Store the given arguments in temporary variables
var _username = argument0;
var _matchScore = argument1;

// Initialize the buffer variables
var _buffer = buffer;
var _clientId = clientId;
var _socket = socket;

// Write the data to the buffer
buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(_buffer, buffer_u8, 5); // The data case ID
buffer_write(_buffer, buffer_u8, _clientId); // The unique client ID
buffer_write(_buffer, buffer_string, _username); // The bullet direction of the fired bullet
buffer_write(_buffer, buffer_u8, _matchScore); // The match score of the player

// Send the buffer to the server
network_send_packet(_socket, _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer
