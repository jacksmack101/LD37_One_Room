/// Create Variables
show_debug_overlay(true);
resetX = x;
resetY = y;
targetX = x;
targetY = y;
resetReached = true;
today = 0;
targetDay = 100;
dayLength = 30; // day length in seconds
target = noone;
lastTarget = noone;
moveSpeed = 10;

crops = ds_map_create();
// crop structure  [ NAME , GROW TIME , ENERGY VALUE, SEED COST]
crops[? "potatoes"] = ["Potatoes", 4, 2];
crops[? "lettuce"] = ["Lettuce", 2, 1];
crops[? "beans"] = ["Beans", 5, 3];
