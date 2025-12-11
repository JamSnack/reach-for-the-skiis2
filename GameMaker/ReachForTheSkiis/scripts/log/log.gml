function log(_category, _msg){
	var _window_id = obj_display.window_id;
	var _is_server = false;
	var _is_client = false;
	
	with (obj_network_session) {
		_is_server = is_struct(server);
		_is_client = is_struct(client);
	}
	
	var _network_string = _is_server ? "Server" : "Client";
	
	show_debug_message($"[ReachForTheSkiis][{_window_id}][{_network_string}][{_category}] {_msg}");
}