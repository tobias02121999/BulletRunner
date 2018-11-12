// Initialize the client variables
var type = network_socket_tcp;
var ip = "192.168.0.54";
var port = 8000;

// Initialize the socket (and store its ID in a variable)
socket = network_create_socket(type);

// Initialize the connection to the created socket
connection = network_connect(socket, ip, port);

// Initialize the buffer (to store data in)
var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

// Unique client ID
clientId = 0;
