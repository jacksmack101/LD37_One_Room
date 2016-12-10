/// @description Character movment
dayStarting = false;
if(target != noone){
	//show_debug_message("obj: "+ string(target.object_index));
}else{
	
//show_debug_message("obj: noone");
}
if(target != noone  && !working){
if(target.object_index == obj_floor){
		resetReached = true;
	}
	if(target.object_index == obj_player.object_index){
		target = noone;
	}
	
}


if(target != noone && target != lastTarget && !working){

//if(resetReached){

	if (target.x > x){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	
	
			
			
	if(target.sprite_index!= 5){

	
		if point_distance(x, y, target.x, target.y+15) > moveSpeed
		{
			move_towards_point(target.x, target.y+15, moveSpeed);
			
			depth = -y ;
		
		}
		else
		{ 
		
			speed = 0;
			if(target.workable){
				if(!target.workedToday){
					workTime=target.workTime;
					alarm[0] = workTime * room_speed;
					working = true;
				}
			}
			
			lastTarget = target;
			target = noone;
		}
	}else{
		if point_distance(x, y, target.x, target.y-10) > moveSpeed
		{
			move_towards_point(target.x, target.y-10, moveSpeed);
			depth = -y;
		
		}
		else
		{ 
			speed = 0;
			lastTarget = target;
			target = noone;
		}
	}
	
	/*
}else{
//show_debug_message("NOT resetReached");

	if (resetX > x){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	if point_distance(x, y, resetX, resetY-10) > moveSpeed + 150
	{
		move_towards_point(resetX, resetY-10, moveSpeed);
		depth = -y;
		
	}
	else
	{ 
		resetReached = true;
	}
}*/
}
