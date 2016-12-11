/// TweenFinishAll(call_event,deactivated)
/*
    @call_event  = execute FINISH EVENT callbacks?
    @deactivated = affect tweens associated with deactivated targets?
    
    RETURN:
        NA
        
    INFO:
        Finishes all tweens, updating them to their destinations.
        DOES NOT affect tweens using PATROL|LOOP|REPEAT play modes.
*/

TweensExecute(TWEENS_ALL, 0, argument1, TweenReverse, argument0);

