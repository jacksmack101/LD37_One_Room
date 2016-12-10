/// @description Insert description here
// You can write your code in this editor

startTime = room_speed * obj_player.dayLength;
workBar = 0;
playerXOffset = (obj_player.bbox_right - obj_player.bbox_left)/2;

alarm_set(0, startTime);
//alarm[0] = startTime;
