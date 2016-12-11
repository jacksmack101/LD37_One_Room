/// @description Change player target

if(mouse_check_button_released(mb_left)){
    var click_id = instance_position(mouse_x,mouse_y,all);
    if(click_id){
        //The id stored in "click_id" is the id of the clicked object!
			show_debug_message("Clicked "+string(click_id.object_index) + "  " + string(obj_floor));
			if(click_id.object_index == obj_floor){
				obj_target.x = mouse_x;
				obj_target.y = mouse_y;
				obj_target.image_alpha = 1;
				obj_player.lastTarget = obj_target_old;
				obj_player.resetReached = true;
				obj_player.target = obj_target;
			}else{
				if(click_id != obj_player.target){
					obj_player.target = click_id;
					obj_player.resetReached = false;
				}
			}
		}
}