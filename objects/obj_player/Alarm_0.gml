/// @description Insert description here
// You can write your code in this editor

working = false;
if(lastTarget.workable){
	lastTarget.workedToday = true;
	
	if(isEquipment( lastTarget)){
		if(lastTarget.object_index == obj_research){
		
		}else{
			lastTarget.workedToday = false;
			if(lastTarget.object_index == obj_bike){
				obj_player.progress += 1;
				takeDamage(5);
				audio_play_sound(snd_powerup,1,0);
			}
			lastTarget = noone;
		}
	
	}
}
alarm[0] = -1;