// Instantiate a click and send it to the server
instance_create_layer(mouse_x, mouse_y, "Instances", obj_click);

// Write the data to the buffer
buffer_seek(buffer, buffer_seek_start, 0); // Make sure to start writing at the start of the buffer
buffer_write(buffer, buffer_u8, 1); // 1
buffer_write(buffer, buffer_u16, mouse_x); // 1, mouse_x
buffer_write(buffer, buffer_u16, mouse_y); // 1, mouse_x, mouse_y

// Send the buffer to the server
network_send_packet(socket, buffer, buffer_tell(buffer)); // Buffer_tell gets the size of the buffer
