if(argument0 == noone){

return false;
}else{
	switch(argument0){
		case "potato":
		
			var inst = instance_create_depth(argument1,argument2,-7000,obj_potato);
			argument3.carrying = inst;
			argument3.harvestable = true;
			inst.container = argument3;
			ds_list_add(obj_player.items, inst);
		break;
	}
}