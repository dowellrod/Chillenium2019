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
currentPathX = xPos;
currentPathY = yPos;

path_add_point(path, currentPathX, currentPathY, decoySpeed);

// initialize visual path
pathList = ds_list_create();
ds_list_add(pathList, currentPathX, currentPathY);