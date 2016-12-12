/// @description Change player target

if(mouse_check_button_released(mb_left)){
    var click_id = instance_position(mouse_x,mouse_y,all);
	if(obj_player.target != noone){
		if(obj_player.target.object_index == obj_research && click_id.object_index == obj_research){
			if(!obj_player.researchMove){
				obj_player.researching = true;
			}
		}else{
			obj_player.researching = false;
		}
		}
    if(click_id){
        //The id stored in "click_id" is the id of the clicked object!
			show_debug_message("Clicked "+string(click_id.object_index) + "  " + string(obj_floor));
			if(click_id.object_index == obj_floor && !obj_player.inBed){
				obj_target.x = mouse_x;
				obj_target.y = mouse_y;
				obj_target.image_alpha = 1;
				obj_player.lastTarget = obj_target_old;
				obj_player.resetReached = true;
				obj_player.target = obj_target;
			}else{
			
				if(click_id.object_index == obj_potato ||click_id.object_index == obj_lettuce ||click_id.object_index == obj_pepper){
					//click_id.container.image_alpha = .5;
					if(click_id.container != noone){
						click_id = click_id.container;
						obj_player.target = click_id;
					}
				}else if(click_id != obj_player.target && object_is_ancestor(click_id.object_index, obj_walkable)){
					obj_player.target = click_id;
					obj_player.resetReached = false;
				}
			}
		}
}