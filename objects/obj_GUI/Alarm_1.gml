/// @description Insert description here
// You can write your code in this editor

if(obj_player.inBed){
room_goto(rm_status);
alarm[1] = -1;
}else{
var hp = takeDamage( 3);
if (hp >0){
	alarm[1] = 10;
}else{

}
}