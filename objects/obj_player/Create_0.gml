/// Create Variables
//show_debug_overlay(true);
resetX = x;
resetY = y;
targetX = x;
targetY = y;

resetReached = true;
today = 0;
targetDay = 100;
dayStarting = true;
defaultDayLength = 10;
overtimeLimit = 4;
dayLength = defaultDayLength; // day length in seconds
target = noone;
lastTarget = noone;
working = false;
moveSpeed = 10;
workTime = 0;
carrying = noone;
items = ds_list;

for (var i = 0; i < instance_number(obj_garden_potato); i += 1)
   {
   gardens[i] = instance_find(obj_garden_potato,i);
   }

crops = ds_map_create();
// crop structure  [ NAME , GROW TIME , ENERGY VALUE, SEED COST]
crops[? "potatoes"] = ["Potatoes", 4, 2];
crops[? "lettuce"] = ["Lettuce", 2, 1];
crops[? "beans"] = ["Beans", 5, 3];


