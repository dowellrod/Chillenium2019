// Animation
image_index = 0;
image_speed = 0;


// State Change
if (global.INPUT_UP || global.INPUT_DOWN || global.INPUT_RIGHT || global.INPUT_LEFT) {
	currentState = PlayerStates.MOVE;
	image_speed = 1
}

// Pathing
for (i = 0; i < global.pathLength; i++) 
	if(global.INPUT_PATH[i]) {
		currentState = PlayerStates.PATH;
		image_speed = 1;
	}