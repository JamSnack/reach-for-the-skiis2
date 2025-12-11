if (live_call()) return live_result;

image_speed = 0;

min_speed = 1;
max_speed = 2;

facing_direction = 0

z = 0;
velocity_z = 0;


replicated_proxy = false;
controlled_proxy = false;

owning_controller = noone;

replicated_x = x;
replicated_y = y;
replicated_z = z;
replicated_image_speed = image_speed;
replicated_direction = 0;