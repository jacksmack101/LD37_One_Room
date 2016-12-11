/// TweenEventEnableAll(event,enable,deactivated)
/*
    @event       = tween event constant -- TWEEN_EV_****
    @enable      = enable the tween event?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Used to enable/disable specified event for all tweens
*/

TweensExecute(TWEENS_ALL, 0, argument2, TweenEventEnable, argument0, argument1);


