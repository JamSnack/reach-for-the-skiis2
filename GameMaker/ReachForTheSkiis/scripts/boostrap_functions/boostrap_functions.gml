function start_listen_server() {
	var _session = instance_create_depth(0, 0, 0, obj_network_session);
	_session.server = new Server();
	_session.client = new Client();
	

	_session.server.add_listen_server_client(_session.client);
	_session.client.connect_listen_server(_session.server);
	
	global.world.register_server(_session.server);
	global.world.register_client(_session.client);
	
	global.game_mode = new GameMode();
	global.game_mode.create_local_player(_session.client);
}

function start_client(url) {
	var _session = instance_create_depth(0, 0, 0, obj_network_session);
	_session.client = new Client();	
	global.world.register_client(_session.client);
	_session.client.connect("localhost");
}	