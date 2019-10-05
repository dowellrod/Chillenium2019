// Animation
image_index = 0;
image_speed = 0;


// State Change
<<<<<<< HEAD
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
=======
if (global.INPUT_UP || global.INPUT_DOWN || global.INPUT_RIGHT || global.INPUT_LEFT) global.currentState = PlayerStates.MOVE;

// Pathing
for (i = 0; i < global.pathLength; i++) 
	if(global.INPUT_PATH[i])
		global.currentState = PlayerStates.PATH;
>>>>>>> eb7b214b43848af75b1c263a7e8ae7f031451946
