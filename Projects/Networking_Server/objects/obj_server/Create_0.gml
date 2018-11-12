// Initialize the server variables
var type = network_socket_tcp;
var port = 8000;
max_clients = 1;
socket = noone;

// Initialize the server (and store its ID in a variable)
server = network_create_server(type, port, max_clients);
