var n_id = ds_map_find_value(async_load, "id");

if (client.socket == async_load[? "id"]) {
	var _buffer = async_load[? "buffer"]; 
	buffer_seek(_buffer, 0, 0);
	var _str = buffer_read(_buffer ,buffer_string);
	client.process_incoming_message_queue(json_parse(_str));
}