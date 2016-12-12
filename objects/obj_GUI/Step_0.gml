/// @description Insert description here
// You can write your code in this editor


pc = (alarm_get(0) / startTime) * 100;

var playerAlarm = 0;
with(obj_player){
	playerAlarm = alarm_get(0);
}
//show_debug_message("ALARM: "+ string(playerAlarm));
if(hpTime != obj_player.hp){
	hpTime -= sign(hpTime - obj_player.hp);
}

if(proTime != obj_player.progress){
	proTime -= sign(proTime - obj_player.progress);
}

workBar = (playerAlarm / (obj_player.workTime * room_speed)) * 100;
researchBar = (obj_player.upgrades[obj_player.targetUpgrade]/1) *100;
hpBar = (hpTime / obj_player.maxhp) * 100;

distPer = (proTime / obj_player.remainingDistance)*100;