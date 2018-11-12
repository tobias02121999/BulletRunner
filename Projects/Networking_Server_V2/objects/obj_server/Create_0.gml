// Initialize the server variables
var type = network_socket_tcp;
var port = 8000;
maxClients = 5;

// Initialize the sockets
scr_sockets_initialize();

// Initialize the server (and store its ID in a variable)
server = network_create_server(type, port, maxClients);

// Initialize the buffer (to store data in)
var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);
