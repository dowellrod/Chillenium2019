// This returns the path of a decoy based on user input
// Draws path

// argument0 = decoy, argument1 = path arrow

// if r is pressed, reset path
if (keyboard_check(ord("r"))) {
	
	path_delete(argument0.path);
	argument0.currentPathX = argument0.xPos;
	argument0.currentPathY = argument0.yPos;
}

// check if [0-3] was pressed
for (i = 0; i < global.pathLength; i++) {
	
	// check if same decoy button is pressed
	if (global.INPUT_PATH[i] && i == global.CURRENT_DECOY) {
		
		// clear visual path and return
		ds_list_destroy(argument0.pathList);
		instance_destroy(argument1);
		
		currentState = PlayerStates.IDLE;
		
		return;
	}
}

// draw current path
for (i = 0; i < ds_list_size(argument0.pathList);) {
	
	var p = instance_create_depth(argument0.pathList[| i], argument0.pathList[| (i + 1)], 0, obj_Path);
	i += 2;
}

// update position
argument0.currentPathX += (global.INPUT_DOWN - global.INPUT_UP) * argument0.decoySpeed;
argument0.currentPathY += (global.INPUT_RIGHT - global.INPUT_LEFT) * argument0.decoySpeed;

// move arrow
argument1.arrowX = argument0.currentPathX;
argument0.arrowY = argument0.currentPathY;

event_perform_object(argument1, ev_other, 0);

// add position to path
path_add_point(argument0.path, argument0.currentPathX, argument0.currentPathY, argument0.decoySpeed);

// add position to visual path
if (argument0.addTimer == 0) {
	
	ds_list_add(argument0.path, argument0.currentPathX, argument0.currentPathY);
	argument0.addTimer = 5;
}
else {
	argument0.addTimer--;
}