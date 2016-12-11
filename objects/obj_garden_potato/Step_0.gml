/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){


	if(workedToday){
		if(harvestable){
			var inst = instance_create_depth(obj_player.x,obj_player.y,-7000,obj_potato);
			obj_player.carrying = inst;
		}else{
			if(image_index == 0){
				growFrame = 1;
			}
			image_index = growFrame + 1;
		}
	}
	depth = -y ;
}

