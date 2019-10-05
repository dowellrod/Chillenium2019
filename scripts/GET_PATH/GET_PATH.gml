// This returns the path of a decoy based on user input
// Draws path

// argument0 = decoy

// create new path starting at decoy
path = path_add();
path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);

// draw starting arrow
instance_create_depth(argument0.xPos, argument0.yPos, 300, obj_PathArrow);


// TODO: check if decoy is selected
while (global.GAME_MODE == 1) {

	if (global.INPUT_UP) {
		
		// update path
		path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);
		
		// draw path arrow in new place
			// create arrow
			// orient arrow
		
		
		// create path in previous place (check orientation and corner)
	}	
	
	else if (global.INPUT_DOWN) {
		
		// update path
		path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);
		
		// draw path arrow in new place
		// create path in previous place (check orientation and corner)
	}
	
	else if (global.INPUT_RIGHT) {
		
		// update path
		path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);
		
		// draw path arrow in new place
		// create path in previous place (check orientation and corner)
	}
	
	else if (global.INPUT_LEFT) {
		
		// update path
		path_add_point(path, argument0.xPos, argument0.yPos, argument0.decoySpeed);
		
		// draw path arrow in new place
		// create path in previous place (check orientation and corner)
	}
}

// return new path
return path;