var _window_size = {
	x: 1920 / 2,
	y: 1080/ 2
};

var _total_windows = MultiClientGetNumberOfClients();
var _total_width = _window_size.x * _total_windows;

window_set_size(_window_size.x, _window_size.y);
show_message(MultiClientGetID());
var _client_id = max(0, MultiClientGetID());


window_set_rectangle(
	(display_get_width() - _total_width) / 2 + _client_id * _window_size.x,
	(display_get_height() - _window_size.y) / 2,
	_window_size.x,
	_window_size.y
);
