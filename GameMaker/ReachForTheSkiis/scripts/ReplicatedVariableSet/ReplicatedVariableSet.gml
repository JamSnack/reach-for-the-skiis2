function ReplicatedVariableSet() constructor {
	getters = [];
	setters = [];
	last_state = {};
	last_diff = {};
	
	function update_controlled_variables() { 
		var _new_state = {};
		
		for (var _i = 0; _i < array_length(getters); _i++) {
			var _var_name = getters[_i][0];
			_new_state[$ _var_name] = getters[_i][1]();
			if (_new_state[$ _var_name] != last_state[$ _var_name]) {
				last_diff[$ _var_name] = _new_state[$ _var_name];
			}
		}
		
		last_state = _new_state;
	}
	
	function set_replicated_variables(_key_value_pairs) {
		var _names = variable_struct_get_names(_key_value_pairs);
		for (var _i = 0; _i < array_length(_names); _i++) {
			
		}
	}
	
	function calculate_current_state() {
		var _new_state = {};
		
		for (var _i = 0; _i < array_length(getters); _i++) {
			var _var_name = getters[_i][0];
			_new_state[$ _var_name] = getters[_i][1]();
		}		
		
		return _new_state;
	}
	
	function clear_last_diff() {
		var _ret = last_diff;
		last_diff = {};
		return _ret;
	}
}