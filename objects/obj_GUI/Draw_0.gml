/// @description Update Bars


if(workBar){
draw_healthbar(obj_player.x - playerXOffset, obj_player.y-80, obj_player.x + 50 - playerXOffset, obj_player.y - 90, workBar, c_black, c_lime, c_lime, 0, true, true);

}


draw_healthbar(obj_research.x +80, obj_research.y-150, obj_research.x + 250 - playerXOffset, obj_research.y - 140, researchBar, c_black, c_blue, c_blue, 0, true, true);
