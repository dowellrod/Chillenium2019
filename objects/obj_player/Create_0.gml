// Player Variables
horizontalDirection = 0;
verticalDirection = 0;
horizontalMovement = 0;
verticalMovement = 0;
mySpeed = 2;

// Player States
enum PlayerStates{IDLE, MOVE}; //PATH
state[PlayerStates.IDLE] = Player_Idle;
state[PlayerStates.MOVE] = Player_Move;
//state[PlayerStates.PATH] = Player_Path;

global.currentState = PlayerStates.IDLE;

ghost = false;
decoy0 = true;
decoy1 = true;
decoy2 = true;
decoy3 = true;