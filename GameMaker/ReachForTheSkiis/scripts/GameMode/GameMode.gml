function GameMode() constructor {
	server = noone;
	player_controllers = [];

	create_local_player = function(_local_client) {
		var _pc = new PlayerController(_local_client);
		_pc.controlled_proxy = true;
		
		array_push(player_controllers, _pc);
		
		handle_player_joined(_pc);
		
		return _pc;
	}
	
	handle_player_joined = function(_player_controller) {
		var _avatar = instance_create_depth(0, 0, 0, obj_player);
		_avatar.controlled_proxy = _player_controller.controlled_proxy;
		_avatar.replicated_proxy = _player_controller.replicated_proxy;
		
		_player_controller.avatar = _avatar;
		_avatar.owning_controller = _player_controller;
	}
}