with (server) {
	if (async_load[? "id"] == socket) {
		switch(async_load[? "type"]) {
			case network_type_connect:
				 handle_socket_connected(async_load[? "socket"]);
			    break;
			case network_type_disconnect:
				 handle_socket_disconnected(async_load[? "socket"]);
				break;
		}
	}
	
	for (var _i = 0; _i < array_length(clients); _i++) {
		if (clients[_i].socket == async_load[? "id"]) {
			var _buffer = async_load[? "buffer"]; 
			if (buffer_exists(_buffer)) {
				buffer_seek(_buffer, 0, 0);
				var _str = buffer_read(_buffer ,buffer_string);
				process_incoming_message_queue(clients[_i], json_parse(_str));
			}	
		}
	}
}

with (client) {
	if (socket == async_load[? "id"]) {
		var _buffer = async_load[? "buffer"]; 
		buffer_seek(_buffer, 0, 0);
		var _str = buffer_read(_buffer ,buffer_string);
		process_incoming_message_queue(json_parse(_str));
	}
}