/// @description Insert description here
// You can write your code in this editor

draw_healthbar(0 , 0,  10 , room_height, pc, c_black, c_red, c_lime, 3, true, true);

var tempSize = camera_get_view_width(camera_get_active());

draw_healthbar(300 , 20,  tempSize-300 , 40, hpBar, c_black, c_red, c_lime, 0, true, true);

