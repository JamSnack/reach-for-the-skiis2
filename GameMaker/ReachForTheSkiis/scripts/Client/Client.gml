function Client() constructor {
socket = network_create_socket(network_socket_tcp);
	log_category = "client";

	listen_server = noone;

	event_channels = {};

	function connect(url = "localhost") { 
		log(log_category, "client attempting to connect to server:");
		network_connect(socket, url, 666);
	}

	function connect_listen_server(_server) {
		listen_server = _server;	
	}

	function handle_http_connected() {
		log(log_category, "client connected");
	}

	function handle_http_disconnected() {
		log(log_category, "client disconnected");	
	}

	function get_channel(_event) {
		if (event_channels[$ _event] == undefined) {
			event_channels[$ _event] = new Delegate();	
		}
	
		return event_channels[$ _event];
	}
	
	function process_incoming_message_queue(_message_queue) {
		for (var _i = 0; _i < array_length(_message_queue); _i++) {
			get_channel(_message_queue[_i].event_name).execute(_message_queue[_i].payload);	
		}
	}

	function on(_event, _fn) {
		return get_channel(_event).add(_fn);	
	};

	function off(_event, _handle) {
		get_channel(_event).remove(_handle);	
	}
}