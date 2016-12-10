/// @description Change player target

if(mouse_check_button_released(mb_left)){
    var click_id = instance_position(mouse_x,mouse_y,all);
    if(click_id){
        //The id stored in "click_id" is the id of the clicked object!
			show_debug_message("Clicked "+string(click_id));
			obj_player.target = click_id;
			obj_player.resetReached = false;
		}
}