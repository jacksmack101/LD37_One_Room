/// @description Insert description here
// You can write your code in this editor

if(mouseActive){
	if(mouse_check_button_released(mb_left)){
		room_goto(rm_game);
	}
	if(tempVar){
		if(obj_continue.y <= continueY + 10){
			obj_continue.y++;
		}else{
			obj_continue.y = continueY+10;
			tempVar = !tempVar;
		}
	}
	
	if(!tempVar){
		if(obj_continue.y >= continueY -10){
			obj_continue.y--;
		}else{
			obj_continue.y = continueY-10;
			tempVar = !tempVar;
		}
	}
	//show_debug_message("TEMPVAR: "+string(tempVar));
}