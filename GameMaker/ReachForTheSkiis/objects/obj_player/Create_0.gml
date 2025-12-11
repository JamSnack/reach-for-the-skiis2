if (live_call()) return live_result;

image_speed = 0;

min_speed = 1;
max_speed = 2;

facing_direction = 0

z = 0;
velocity_z = 0;

replication = new ObjectReplication();

replication.add_variable("x", method(id, function() { return x; }), method(id, function(_x) { 
	if (!replication.controlled_proxy) {
		x = _x; 
	}
}));

replication.add_variable("y", method(id, function() { return y; }), method(id, function(_y) { 
	if (!replication.controlled_proxy) {
		y = _y;
	}
}));