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
defaultDayLength = 1;
overtimeLimit = 4;
dayLength = defaultDayLength; // day length in seconds
target = noone;
lastTarget = noone;
working = false;
moveSpeed = 10;
workTime = 0;

crops = ds_map_create();
// crop structure  [ NAME , GROW TIME , ENERGY VALUE, SEED COST]
crops[? "potatoes"] = ["Potatoes", 4, 2];
crops[? "lettuce"] = ["Lettuce", 2, 1];
crops[? "beans"] = ["Beans", 5, 3];


obj_lighting.depth = -10000;
obj_GUI.depth = -11000;
