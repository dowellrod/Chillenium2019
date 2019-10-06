// this is called whenever decoy mode is entered

// create decoy ghost
var decoy = global.DECOY_LIST[global.CURRENT_DECOY];

var ghost = instance_create_depth(decoy.xPos, decoy.yPos, -100, obj_decoyGhost);
ds_list_destroy(ghost.pathList);

// get path (stored in decoy)
GHOST_PATH(decoy, ghost);

// if idle, execute path
if (global.currentState == PlayerStates.IDLE) {
	//event_perform_object(decoy, ev_user0, 0);
}