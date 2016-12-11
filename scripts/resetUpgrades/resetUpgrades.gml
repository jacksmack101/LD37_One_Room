
if(ds_exists(obj_player.upgradeList, ds_type_list)){
	ds_list_destroy(obj_player.upgradeList);
}
obj_player.upgradeList = ds_list_create();
ds_list_add(obj_player.upgradeList, 0,1,2,3,4);
obj_player.upgrades = [0,0,0,0,0];
ds_list_shuffle(obj_player.upgradeList);
obj_player.targetUpgrade = ds_list_find_index(obj_player.upgradeList,0);
ds_list_delete( obj_player.upgradeList, 0);
