/// @description Character movment
if(room == rm_game){

if(dayStarting){
	obj_player.image_alpha = 1;
	obj_garden_potato.image_alpha = 1;
	x = resetX;
	y = resetY;
	takeDamage(5);
	inBed = false;
	obj_target.x = x;
	obj_target.y = y;
	target = obj_target;
	lastTarget= noone;
	obj_lighting.depth = -10000;
	obj_GUI.depth = -11000;
	if(carrying != noone){
		carrying.x = obj_player.x - (carrying.sprite_width / 2);
		carrying.y = obj_player.y - 350;
	}
	
	working = false;
	itemViewToggle();
	for (var i = 0; i < array_length_1d(gardens); i += 1)
	{
		if(gardens[i].workedToday){
			gardens[i].growFrame --;
			show_debug_message("RUNNING GROW DAYS "+ string(gardens[i].growDays));
			if(gardens[i].workedToday && gardens[i].growDays > 0){
				gardens[i].growDays++;
				gardens[i].growState = gardens[i].growDays; 
			}
	
			gardens[i].workedToday = false;
			if(gardens[i].growDays <= 0){
				gardens[i].growDays++;
			}
			switch (gardens[i].object_index){
				case obj_garden_potato:
					switch(gardens[i].growDays){
						case 0:
						case 1:
							gardens[i].growFrame =1;
						break;
						case 2:
							gardens[i].growFrame = 3;
						break;
						case 3:
						case 4:
							gardens[i].growFrame = 5;
						break;
						case 5:
							gardens[i].growFrame = 7;
							createItem("potato",gardens[i].x - 50,gardens[i].y,gardens[i]);
						break;
		

					}
		
				break;
				case obj_garden_lettuce:
					switch(gardens[i].growDays){
						case 0:
						case 1:
							gardens[i].growFrame =1;
						break;
						case 2:
				
							gardens[i].growFrame = 3;
						break;
						case 3:
						default:
							gardens[i].growFrame = 7;
							createItem("lettuce",gardens[i].x - 50,gardens[i].y,gardens[i]);
					
					
						break;
		

					}
				break;
				case obj_garden_pepper:
					switch(gardens[i].growDays){
						case 0:
						case 1:
						case 2:
							gardens[i].growFrame =1;
						break;
						case 3:
						case 4:
				
							gardens[i].growFrame = 7;
						break;
						case 5:
						case 6:
							gardens[i].growFrame = 5;
						break;
						case 7:
						default:
							gardens[i].growFrame = 7;
							createItem("pepper",gardens[i].x - 50,gardens[i].y,gardens[i]);
					
					
						break;
		

					}
				break;
				}
			if(upgrades[4]){
	
				if(irandom(5) == 1){
					gardens[i].growDays++;
				}
	
			}
			gardens[i].image_index = gardens[i].growFrame;
			}
		}
	
	
	dayStarting = false;
	}

	obj_target.image_alpha -= .05;

	obj_player.depth = -obj_player.y;
	if(target != noone){
		//show_debug_message("obj: "+ string(target.object_index));
	}else{
	
	//show_debug_message("obj: noone");
	}

	if(target != noone  && !working ){
	if(target.object_index == obj_floor){
			resetReached = true;
		}
		if(target.object_index == obj_player.object_index){
			target = noone;
		}
	
	}

if(target != noone && target != lastTarget && !working && !inBed && object_is_ancestor(target.object_index, obj_walkable)){




	researching = false;

//show_debug_message("TARGET: "+string(target) + " " + string(lastTarget));
//if(resetReached){

	if (target.x > x){
		image_xscale = -1;
	}else{
		image_xscale = 1;
	}
	
	
			
			
	if(target.sprite_index!= 5){

	
		if point_distance(x, y, target.x, target.y) > moveSpeed
		{
			move_towards_point(target.x, target.y, moveSpeed);
			if(carrying != noone){
				updateCarryPosition();
			}
			depth = -y ;
		
		}
		else
		{ 
		
			speed = 0;
			if(target.workable){
				if(target.object_index == obj_kitchen){
					if(carrying != noone){
						animateUse(target);
					}else{
						audio_play_sound(snd_use,1,0);
					}
				}else{
					if(!target.workedToday){
						animateUse(target);
						if(carrying != noone){
						dropItem(0);
						}
					}else{
						audio_play_sound(snd_use,1,0);
						
						researching = false;
					}
				}
				if(target.harvestable){
				
								researching = false;
					carrying = target.carrying;
					carrying.container = obj_player;
					target.growDays = -1;
					target.carrying = noone;
					target.image_index = 0;
					updateCarryPosition();
					target.harvestable = false;
				}else{
					if(isEquipment(target.object_index)){
						show_debug_message("TEST ****************************");
						switch(target.object_index){
							case obj_kitchen:
							
								researchMove = true;
								researching = false;
							if(carrying != noone){
								var tempMulti = 5;
								if(upgrades[0] == 1){
									tempMulti += 1;
								}
								obj_player.hp += carrying.energy * tempMulti;
								dropItem(1);
							
								
							}
							break;
							case obj_research:
							if(carrying != noone){
								dropItem(0);
							}
							if(!target.workedToday){
								target.workedToday = true;
								researching = true;
								
								researchMove = false;
								//workTime=target.workTime;
								//alarm[0] = workTime * room_speed;
								working = false;
								audio_play_sound(snd_happyUse,1,0);
							}
							
							if(upgrades[targetUpgrade] >=1){
								var tempStr = "";
								switch(targetUpgrade){
								case 0:
									tempStr = "Health restoration";
									
								break;
								case 1:
									tempStr = "Turbine Optimization";
									stepDist += 1;
								break;
								case 2:
									tempStr = "Movement Speed";
									moveSpeed += 5;
								break;
								case 3:
									tempStr = "Backup Life Support";
									dayLength += 2;
								break;
								case 4:
									tempStr = "Random Crop Advancment";
					 			break;
								
								}
								 upgradeCount++;
								scr_text(tempStr + " research complete!",.5,target.x-400,target.y);
								obj_player.targetUpgrade = ds_list_find_value(obj_player.upgradeList,0);
								ds_list_delete( obj_player.upgradeList, 0);
								
							}else{
								scr_text("Researching upgrades... ",.5,target.x-400,target.y);
							}
							
							break;
							
							case obj_bike:
							
								researchMove = true;
								researching = false;
								if(carrying != noone){
								dropItem(0);
								}
								if(!target.workedToday){
									workTime=target.workTime;
									target.workedToday = true;
									alarm[0] = workTime * room_speed;
									working = true;
									audio_play_sound(snd_happyUse,1,0);
									progress += stepDist;
									show_debug_message("progress: "+string(progress));
									takeDamage(10);
								}
							
							
							break;
						
						}
						
						
							
						
					}else{
						if(!target.workedToday){
						
								researchMove = true;
							audio_play_sound(snd_happyUse,1,0);
							workTime=target.workTime;
							alarm[0] = workTime * room_speed;
							working = true;
					
						}
					}
				}
			}else{
				if(target.object_index == obj_bed){
					inBed = true;
					image_alpha = .5;
				}
			}
			
			lastTarget = target;
			target = noone;
		}
	}else{
		target.x = mouse_x;
		target.y = mouse_y;
		if point_distance(x, y, target.x, target.y-10) > moveSpeed
		{
			move_towards_point(target.x, target.y-10, moveSpeed);
			depth = -y;
			if(carrying != noone){
				updateCarryPosition();
			}
		}
		else
		{ 
		if(carrying != noone){
				updateCarryPosition();
			}
			speed = 0;
			lastTarget = target;
			target = noone;
		}
	}


	if(carrying == noone){
	
		//createItem("potato");
	}
}
//show_debug_message("RESEARCH: "+ string(upgrades[targetUpgrade]));
//show_debug_message("RESEARCH1: "+ string(researchMove));

	if(researching){
	
		
		if(upgrades[targetUpgrade] >=1){
			var tempStr = "";
			if(upgradeCount <= array_length_1d(upgrades)){
			switch(targetUpgrade){
			case 0:
				tempStr = "Health restoration";
									
			break;
			case 1:
				tempStr = "Turbine Optimization";
				stepDist += 1;
			break;
			case 2:
				tempStr = "Movement Speed";
				moveSpeed += 5;
			break;
			case 3:
				tempStr = "Backup Life Support";
				dayLength += 2;
			break;
			case 4:
				tempStr = "Random Crop Advancment";
			break;
								
			}
			upgradeCount++;
					show_debug_message("RESEARCH1: "+ string( targetUpgrade ));			 
			scr_text(tempStr + " research complete!",.5,obj_research.x-400,obj_research.y);
			targetUpgrade = ds_list_find_value(upgradeList,0);
			ds_list_delete( obj_player.upgradeList, 0);
					show_debug_message("RESEARCH2: "+ string( targetUpgrade ));	
			researching = false;	
			}else{
				scr_text("All research complete!",.5,obj_research.x-400,obj_research.y);
				researching = false;	
			}			
		}
			if(researchTimer >= 30){
				researchTimer = 0
				upgrades[targetUpgrade]+= .05;
			}else{
			if(!researchMove){
				researchTimer++;
				}
							
			//show_debug_message("RESEARCH2: "+ string(upgrades[targetUpgrade]));	
		}
	}

}
