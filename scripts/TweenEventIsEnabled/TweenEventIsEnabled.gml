/// TweenEventIsEnabled(tween,event)

var _t= TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return 0; }

var _events = _t[TWEEN.EVENTS];
var _eventType = argument1;

// Return true if events don't exist
if (_events == -1) { return true; }

// Return true if event type doesn't exist
if (ds_map_exists(_events, _eventType) == false) { return true; }

// Return event's [enabled] state boolean
return ds_list_find_value(_events[? _eventType], 0);



