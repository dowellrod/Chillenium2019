/// Create decoy

// decoy position
xPos = 0;
yPos = 0;

// decoy speed
decoySpeed = 2;

// direction
horizontalDirection = 0;
verticalDirection = 0;

// initialize path starting at decoy start
path = path_add();
currentPathX = 0;
currentPathY = 0;

path_add_point(path, currentPathX, currentPathY, decoySpeed);

// initialize visual path
pathList = ds_list_create();
ds_list_add(pathList, currentPathX, currentPathY);

addTimer = 5;