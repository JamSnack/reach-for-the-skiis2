if (live_call()) return live_result;

image_speed = 0;

min_speed = 1;
max_speed = 2;

facing_direction = 0

z = 0;
velocity_z = 0;

replication = new ObjectReplication();

server_x = x;
server_y = y;
server_z = z;


replication.add_variable("x", method(id, function() { return x; }), method(id, function(_x) { 
	server_x = _x;
}));

replication.add_variable("y", method(id, function() { return y; }), method(id, function(_y) { 
	server_y = _y;
}));

replication.add_variable("z", method(id, function() { return z; }), method(id, function(_z) { 
	server_z = _z;
}));

replication.add_variable("facing_direction", method(id, function() { return facing_direction; }), method(id, function(_facing_direction) {
	if (replication.replicated_proxy) {
		facing_direction = _facing_direction;
		log("temp", $"got server facing direction on client: {facing_direction}");
	}
}));