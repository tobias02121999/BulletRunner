/// scr_buffer_player_main()

// Initialize the buffer variables
var _buffer = obj_client.buffer;
var _clientId = obj_client.clientId;
var _socket = obj_client.socket;

// Write the data to the buffer
buffer_seek(_buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(_buffer, buffer_u8, 1); // The data case ID
buffer_write(_buffer, buffer_u8, _clientId); // The unique client ID
buffer_write(_buffer, buffer_u16, x); // The playersX position
buffer_write(_buffer, buffer_u16, y); // The players Y position
buffer_write(_buffer, buffer_u8, scr_system_spriteId(true, 0)); // The players sprite ID
buffer_write(_buffer, buffer_u8, image_index); // The players image index
buffer_write(_buffer, buffer_s8, image_xscale); // The players image X scale
buffer_write(_buffer, buffer_u16, point_direction(x, y, mouse_x, mouse_y)); // The players direction towards the mouse
buffer_write(_buffer, buffer_u8, gunId); // The players gunId
buffer_write(_buffer, buffer_u8, gunImageIndex); // The players gun image_index

// Send the buffer to the server
network_send_packet(_socket, _buffer, buffer_tell(_buffer)); // Buffer_tell gets the size of the buffer