// Animation
sprite_index = global.sprite_idle;

// State Change
if (global.INPUT_UP || global.INPUT_DOWN || global.INPUT_RIGHT || global.INPUT_LEFT) currentState = PlayerStates.MOVE;

// Pathing
for (i = 0; i < global.pathLength; i++) 
	if(global.INPUT_PATH[i])
		state = PlayerStates.PATH;
