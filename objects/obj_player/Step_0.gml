/// @description Character movment
if(room == rm_game){
if(dayStarting){
	
obj_player.image_alpha = 1;
obj_garden_potato.image_alpha = 1;
	x = resetX;
	y = resetY;
	obj_target.x = x;
	obj_target.y = y;
	target = obj_target;
	lastTarget= noone;
	obj_lighting.depth = -10000;
	obj_GUI.depth = -11000;
	
	for (var i = 0; i < array_length_1d(gardens); i += 1)
	{
		if(gardens[i].workedToday){
		gardens[i].growFrame --;
		show_debug_message("RUNNING GROW DAYS "+ string(gardens[i].growDays));
	if(gardens[i].workedToday && gardens[i].growDays > 0){
		gardens[i].growDays++;
		gardens[i].growState = gardens[i].growDays; 
	}
	
	gardens[i].workedToday = false;
	if(gardens[i].growDays <= 0){
		gardens[i].growDays++;
	}
	switch (gardens[i].object_index){
		case obj_garden_potato:
			switch(gardens[i].growDays){
				case 0:
				case 1:
					gardens[i].growFrame =1;
				break;
				case 2:
					gardens[i].growFrame = 3;
				break;
				case 3:
				case 4:
					gardens[i].growFrame = 5;
				break;
				case 5:
				default:
					gardens[i].growFrame = 7;
				break;
		

			}
		
		break;
		case obj_garden_lettuce:
			switch(gardens[i].growDays){
				case 0:
				case 1:
					gardens[i].growFrame =1;
				break;
				case 2:
					gardens[i].growFrame = 7;
				break;
				case 3:
					gardens[i].growFrame = 5;
				break;
				case 4:
				default:
					gardens[i].growFrame = 7;
				break;
		

			}
		break;
		}
	
	gardens[i].image_index = gardens[i].growFrame
		}
	}
	
	dayStarting = false;
}

	obj_target.image_alpha -= .05;

	obj_player.depth = -obj_player.y;
if(target != noone){
	//show_debug_message("obj: "+ string(target.object_index));
}else{
	
//show_debug_message("obj: noone");
}

if(target != noone  && !working ){
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

	
		if point_distance(x, y, target.x, target.y) > moveSpeed
		{
			move_towards_point(target.x, target.y, moveSpeed);
			
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
		target.x = mouse_x;
		target.y = mouse_y;
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
}
