/// @description Insert description here
// You can write your code in this editor


pc = (alarm_get(0) / startTime) * 100;

var playerAlarm = 0;
with(obj_player){
	playerAlarm = alarm_get(0);
}
//show_debug_message("ALARM: "+ string(playerAlarm));
workBar = (playerAlarm / (obj_player.workTime * room_speed)) * 100;