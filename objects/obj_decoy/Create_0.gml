/// Create decoy

// decoy position
xPos = x;
yPos = y;

// decoy speed
decoySpeed = 2;

// direction
horizontalDirection = 0;
verticalDirection = 0;

// initialize path starting at decoy start
path = path_add();

path_add_point(path, xPos, yPos, decoySpeed);