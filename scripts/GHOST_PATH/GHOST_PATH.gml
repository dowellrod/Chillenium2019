/*// this moves the ghost of a decoy and sets the decoy's path (NOT THE GHOST'S)
// argument0 = decoy, argument1 = ghost

// if r is pressed, reset ghost position
if (keyboard_check(ord("r"))) {
	
	argument1.xPos = argument0.xPos;
	argument1.yPos = argument0.yPos;
	
	//path_delete(argument0.path);
	ds_list_clear(argument0.pathList);	
}

// if the current decoy key is pressed, end the path
for (i = 0; i < global.pathLength; i++) {
	
	if (global.INPUT_PATH[i] && i == global.CURRENT_DECOY) {
		
		// get rid of ghost and return
		instance_destroy(argument1);
		global.currentState = PlayerStates.IDLE;
		
		return;
	}
}

// update position
argument1.horizontalDirection = global.INPUT_RIGHT - global.INPUT_LEFT;
argument1.xPos += argument1.horizontalDirection * argument0.decoySpeed;

argument1.verticalDirection = global.INPUT_DOWN - global.INPUT_UP;
argument1.yPos += argument1.verticalDirection * argument0.decoySpeed;

// add position to path
//path_add_point(argument0.path, argument1.xPos, argument1.yPos, argument0.decoySpeed);
ds_list_add(argument0.pathList, argument1.xPos, argument1.yPos);*/