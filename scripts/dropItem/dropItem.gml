if(obj_player.carrying != noone){
	var player = obj_player;
		
	
		ds_list_delete(obj_player.items, ds_list_find_index(obj_player.items, player.carrying));
		if(argument[0] != 0){
		instance_destroy(player.carrying);
		}else{
			player.carrying.x = player.x + (100 * -player.image_xscale);
			player.carrying.y = player.y - 70;
			//t = TweenFire(player.carrying, image_alpha__, EaseInOutQuad, TWEEN_MODE_BOUNCE, true, 0.0, 3.0, 1, 2);
			tw = TweenFire(player.carrying, image_alpha__, EaseInOutQuad, TWEEN_MODE_PATROL, true, 0.0, 0.06, 1, 0);
			TweenAddCallback(tw,TWEEN_EV_CONTINUE ,player.carrying,destroy_myTween,tw);
		}
		player.carrying = noone;
	if(argument[0] == 1){ // add to health
		//drop the item.
		
		audio_play_sound(snd_eat,1,0);
	}else if(argument[0] == 2){//added to ship fuel
	
		audio_play_sound(snd_powerup,1,0);
	
	}else{ //food is dropped and wasted.
		audio_play_sound(snd_loss,1,0);
	}

}