/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){


	if(workedToday){
		if(harvestable){
			
			growDays = 0;
			growFrame = 0;
			image_index = growFrame;
			harvestable = false;
			workedToday = false;
		}else{
			if(image_index == 0){
				growFrame = 1;
			}
			image_index = growFrame + 1;
		}
	}
	depth = -y ;
}

