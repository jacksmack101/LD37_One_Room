
list = obj_player.items;

listSize = ds_list_size(list);
var tempVis = true;
for(var i = 0; i < listSize; i ++ ){
	tempVis = ceil(list[|i].image_alpha);
	tempVis = !tempVis;
	list[|i].image_alpha = tempVis;
	
	
}