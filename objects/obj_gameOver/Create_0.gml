/// @description Insert description here
// You can write your code in this editor



obj_player.today = 0;
obj_player.hp = obj_player.startingHP;

obj_player.dayStarting = true;
obj_player.image_alpha = 0;
obj_garden_potato.image_alpha = 0;
obj_garden_potato.updatedToday = false;


obj_garden_potato.growDays = -1;
obj_garden_potato.growFrame = 0;
obj_garden_potato.growState = 0;
obj_garden_potato.workable = true;
obj_garden_potato.workedToday = false;
obj_garden_potato.updatedToday = true;
obj_garden_potato.harvestable = false;
obj_garden_potato.image_index = obj_garden_potato.growFrame;
//obj_garden_potato.carrying = noone;

var itemsList = obj_player.items;
for(var i = 0; i < ds_list_size(obj_player.items); i ++){
	instance_destroy(ds_list_find_value(obj_player.items, i));
}
ds_list_clear(obj_player.items);

obj_target.image_alpha = 0;
pauseTime = 1;
obj_player.today++;
mouseActive = false;
alarm[0] = pauseTime * room_speed;
itemViewToggle();
tempVar = true;
continueY = obj_continue.y;

