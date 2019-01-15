// Initialize the client variables
var type = network_socket_tcp;
var ip = "10.3.21.137";
var port = 8000;

// Set the network config
network_set_config(network_config_connect_timeout, 4000);

// Initialize the socket (and store its ID in a variable)
socket = network_create_socket(type);

// Initialize the connection to the created socket
connection = network_connect(socket, ip, port);

// Notify the user that it is unable to connect
if (connection < 0)
{
	show_message("Unable to connect . . .");
	room_goto(rm_menu);
	instance_destroy();
}
else
	room_goto(rm_level_dungeon);

// Initialize the buffer (to store data in)
var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

// Unique client ID
clientId = 0;

// Keep track of if the match is full
matchIsFull = false;
matchIsActive = false;
matchIsWon = false;
winner = 0;

// Store the clients username
username = "";
matchScore = 0;
