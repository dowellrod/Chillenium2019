// Movement
verticalDirection = global.INPUT_DOWN - global.INPUT_UP;
y += verticalDirection * mySpeed;
horizontalDirection = global.INPUT_RIGHT - global.INPUT_LEFT;
x += horizontalDirection * mySpeed;

// Animation
// 0
if (verticalDirection == 0 && horizontalDirection > 0)  sprite_index = global.sprite_0;
// 45
if (verticalDirection > 0  && horizontalDirection > 0)  sprite_index = global.sprite_45;
// 90
if (verticalDirection > 0  && horizontalDirection == 0) sprite_index = global.sprite_90;
// 135
if (verticalDirection > 0  && horizontalDirection < 0)  sprite_index = global.sprite_135;
// 180
if (verticalDirection == 0 && horizontalDirection < 0)  sprite_index = global.sprite_180;
// 225
if (verticalDirection < 0  && horizontalDirection < 0)  sprite_index = global.sprite_225;
// 270
if (verticalDirection < 0  && horizontalDirection == 0) sprite_index = global.sprite_270;
// 315
if (verticalDirection < 0  && horizontalDirection > 0)  sprite_index = global.sprite_315;


// Change State
if (!global.INPUT_UP && !global.INPUT_DOWN && !global.INPUT_RIGHT && !global.INPUT_LEFT) currentState = PlayerStates.IDLE;

// Pathing
for (i = 0; i < global.pathLength; i++) 
	if(global.INPUT_PATH[i])
		state = PlayerStates.PATH;