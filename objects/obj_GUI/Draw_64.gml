/// @description Insert description here
// You can write your code in this editor
var tempSize = camera_get_view_width(camera_get_active());
draw_healthbar(0 , 0,  tempSize , 10, pc, c_black, c_red, c_lime, 0, true, true);
draw_healthbar(300 , 20,  tempSize-300 , 40, hpBar, c_black, c_red, c_lime, 0, true, true);



draw_healthbar(0 , room_height-10,  tempSize , room_height, distPer, c_black, c_white, c_white, 0, true, true);
//progress = 0;
//remainingDistance = 100;