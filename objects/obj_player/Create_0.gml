// Player Variables
horizontalDirection = 0;
verticalDirection = 0;
horizontalMovement = 0;
verticalMovement = 0;
mySpeed = 2;

lastDirection = 0; // Shows the direction you last moved.

// Player States
enum PlayerStates{IDLE, MOVE, PATH};
state[PlayerStates.IDLE] = Player_Idle;
state[PlayerStates.MOVE] = Player_Move;
state[PlayerStates.PATH] = Player_Path;

currentState = PlayerStates.IDLE;