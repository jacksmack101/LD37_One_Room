/// TweenSystemCountPlaying()
/*
    RETURN:
        real
    
    INFO:
        Returns total number of tweens playing in system, excluding those in inactive persistent rooms
*/

var _tweens = SharedTweener().tweens;
var _total = 0;
var _index = -1;

repeat(ds_list_size(_tweens))
{
    var _tween = _tweens[| ++_index];
    _total += _tween[TWEEN.STATE] >= 0;
}

return _total;

