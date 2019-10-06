/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
// Player Variables
horizontalDirection = 0;
verticalDirection = 0;
horizontalMovement = 0;
verticalMovement = 0;
mySpeed = 2;

// Player States
//enum PlayerStates{IDLE, MOVE}; //PATH
state[PlayerStates.IDLE] = Player_Idle;
state[PlayerStates.MOVE] = Player_Move;
//state[PlayerStates.PATH] = Player_Path;

global.currentState = PlayerStates.IDLE;

ghost = false;
path = path_add();
path_set_closed(path, false);