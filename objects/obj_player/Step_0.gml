/// @description Character movment



if(target != noone && target != lastTarget){
if(resetReached){
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
}else{
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
}
}
