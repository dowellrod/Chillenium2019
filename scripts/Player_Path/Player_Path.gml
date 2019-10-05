// this is called whenever decoy mode is entered

// get current decoy and create path arrow
decoy = global.DECOY_LIST[global.CURRENT_DECOY];

arrow = instance_create_depth(decoy.currentPathX, decoy.currentPathY, 100, obj_PathArrow);
arrow.image_angle = decoy.image_angle;

// get path
decoyPath = GET_PATH(decoy, arrow);

// if idle, execute path
if (currentState == PlayerStates.IDLE) {
	path_start(decoyPath, decoy.decoySpeed, path_action_stop, true);
}