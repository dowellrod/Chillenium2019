// this is called whenever decoy mode is entered

// create path arrow
decoy = global.DECOY_LIST[global.CURRENT_DECOY];

arrow = instance_create_depth(decoy.currentPathX, decoy.currentPathY, 0, obj_PathArrow);
arrow.image_angle = decoy.image_angle;

// get path
GET_PATH(decoy, arrow);

// if idle, execute path
if (global.currentState == PlayerStates.IDLE) {
	event_perform_object(decoy, ev_user0, 0);
}