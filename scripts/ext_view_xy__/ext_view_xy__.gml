/// ext_view_xy__(amount,data[view|x1|x2|y1|y2])

var _data = argument1;
var _viewIndex = _data[0];

__view_set( e__VW.XView, _viewIndex, lerp(_data[1], _data[2], argument0 ));
__view_set( e__VW.YView, _viewIndex, lerp(_data[3], _data[4], argument0 ));

