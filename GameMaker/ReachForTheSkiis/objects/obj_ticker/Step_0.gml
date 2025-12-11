for (var _i = 0; _i < array_length(timers); _i++) {
	var _timer = timers[_i];
	if (ticker - _timer.birth >= _timer.delay) {
		var _continue = _timer.callback();
		
		if (!_continue || !_timer.loop) {
			array_delete(timers, _i, 1);
			_i--;
		}
	}
}