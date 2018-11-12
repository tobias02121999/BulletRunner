// Instantiate the click
instance_create_layer(mouse_x, mouse_y, "Instances", obj_click);

// Write the data to the buffer
buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(buffer, buffer_u8, 1);
buffer_write(buffer, buffer_u8, clientId);
buffer_write(buffer, buffer_u16, mouse_x);
buffer_write(buffer, buffer_u16, mouse_y);

// Send the buffer to the server
network_send_packet(socket, buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
