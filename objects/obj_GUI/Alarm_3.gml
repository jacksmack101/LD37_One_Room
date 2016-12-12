/// @description Insert description here
// You can write your code in this editor

alarmCount++;
audio_play_sound(snd_alarm,1,0);
alarm[3]=-1;
if(alarmCount< 10){
alarm[3]=30;
}