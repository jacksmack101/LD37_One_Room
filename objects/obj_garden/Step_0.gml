/// @description Insert description here
// You can write your code in this editor

if( obj_player.dayStarting){

	workedToday = false;
	if(growDays >= 0){
		growDays++;
	}
	switch(growDays){
		case 0:
			growFrame = 2;
		break;
		case 1:
			growFrame = 3;
		break;
		case 2:
			growFrame = 5;
		break;
		case 3:
			growFrame = 7;
		break;
	}
	image_index = growFrame
}else{
	if(workedToday){
		if(image_index == 0){
			growFrame = 1;
		}
		image_index = growFrame + 1;
	}
}