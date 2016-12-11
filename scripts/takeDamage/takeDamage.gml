///takeDamage(damage)
var tempDmg = 2;

if(argument[0] != noone){
tempDmg = argument[0];
}

obj_player.hp -= tempDmg;
if(obj_player.hp > 0){

audio_play_sound(snd_pain,1,0);
}else{

audio_play_sound(snd_death,1,0);
room_goto(rm_gameOver);
}

return obj_player.hp;