/// @description Insert description here
// You can write your code in this editor

obj_player.today = 0;
obj_player.hp = obj_player.startingHP;

obj_player.dayStarting = true;
obj_player.image_alpha = 0;
obj_garden_potato.image_alpha = 0;
obj_garden_potato.updatedToday = false;
obj_target.image_alpha = 0;
pauseTime = 3;
obj_player.today++;
mouseActive = false;
alarm[0] = pauseTime * room_speed;
itemViewToggle();
tempVar = true;
continueY = obj_continue.y;