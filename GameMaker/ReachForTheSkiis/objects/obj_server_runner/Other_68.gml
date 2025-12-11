if (async_load[? "id"] == server.socket) {
	switch(async_load[? "type"]) {
		case network_type_connect:
			 server.handle_socket_connected(async_load[? "socket"]);
		    break;
		case network_type_disconnect:
			 server.handle_socket_disconnected(async_load[? "socket"]);
		    break;
	}
}