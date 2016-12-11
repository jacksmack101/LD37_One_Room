/// ext_hvspeed__(amount,data[h1|h2|v1|v2],target)

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.hspeed = lerp(_data[0], _data[1], _amount);
_target.vspeed = lerp(_data[2], _data[3], _amount);

