global.ticker = id;

ticker = -1;

timers = [];

add_timer = function(_delay, _loop, _callback) {
	var _timer = {
		delay: _delay,
		loop: _loop,
		birth: ticker,
		callback: _callback
	}
	
	array_push(timers, _timer);
}