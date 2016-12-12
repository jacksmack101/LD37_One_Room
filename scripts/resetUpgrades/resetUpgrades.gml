obj_player.moveSpeed = obj_player.baseMoveSpeed;
obj_player.dayLength = obj_player.defaultDayLength;

if(ds_exists(obj_player.upgradeList, ds_type_list)){
	ds_list_destroy(obj_player.upgradeList);
}
obj_player.upgradeList = ds_list_create();
ds_list_add(obj_player.upgradeList, 0);
ds_list_add(obj_player.upgradeList, 1);
ds_list_add(obj_player.upgradeList, 2);
ds_list_add(obj_player.upgradeList, 3);
ds_list_add(obj_player.upgradeList, 4);
obj_player.upgradeCount = 0;
obj_player.upgrades = [0,0,0,0,0];
ds_list_shuffle(obj_player.upgradeList);
ds_list_find_value(obj_player.upgradeList,0);
randomise();
ds_list_shuffle(obj_player.upgradeList);
show_debug_message("obj_player.targetUpgrade 1 "+string(ds_list_find_value(obj_player.upgradeList,0)));
obj_player.targetUpgrade = ds_list_find_value(obj_player.upgradeList,0);
show_debug_message("obj_player.targetUpgrade "+string(obj_player.targetUpgrade));
ds_list_delete( obj_player.upgradeList, 0);
show_debug_message("obj_player.targetUpgrade 2 "+string(ds_list_find_value(obj_player.upgradeList,0)));
