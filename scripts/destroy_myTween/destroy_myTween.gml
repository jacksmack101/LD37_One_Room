
obj_player.droppedCount ++;
if(obj_player.droppedCount >= 3){
obj_player.droppedCount = 0;
instance_destroy(TweenGetTarget(argument[0]));
//TweenDestroy(argument[0]);
}



