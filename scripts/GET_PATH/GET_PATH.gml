// This returns the path of a decoy based on user input
// Draws path

// argument0 = decoy

// create new path starting at decoy
path = path_add();
path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);

// draw starting arrow
pathArrow = instance_create_depth(argument0.xPos, argument0.yPos, 300, obj_PathArrow);
pathArrow.image_angle = argument0.image_angle;

// get starting position
var pathX = argument0.xPos;
var pathY = argument0.yPos;

// initialize list of positions
var pathList = ds_list_create();
ds_list_add(pathList, pathX, pathY);

var addCounter = 10;

// TODO: check game mode correctly
while (global.GAME_MODE == 1) {
	
	// draw current path
	for (i = 0; i < ds_list_size(pathList);) {
		
		instance_create_depth(pathList[i], pathList[i + 1], 300, obj_Path);
		
		i += 2;
	}
	
	// update path position
	pathX += (global.INPUT_DOWN - global.INPUT_UP) * argument0.decoySpeed;
	pathY += (global.INPUT_RIGHT - global.INPUT_LEFT) * argument0.decoySpeed;
	
	// add new position to path
	path_add_point(path, pathX, pathY, argument0.decoySpeed);

	// add to list (but not on every step)
	if (addCounter == 0) {
		
		ds_list_add(pathList, pathX, pathY);
		addCounter = 10;
	}
	else {
		addCounter--;
	}
	
	// move path arrow to new position
	// TODO: rotate arrow
	move_towards_point(pathX, pathY, argument0.decoySpeed);
}

// clear path
ds_list_destroy(pathList);

// return new path
return path;