if (place_meeting(x + horizontalMovement, y, COLLIDEABLE)) {
	while (!place_meeting(x+sign(horizontalMovement), y, COLLIDEABLE)){
		x+=sign(horizontalMovement);
	}
	horizontalMovement = 0;
}

if (place_meeting(x, y + verticalMovement, COLLIDEABLE)) {
	while (!place_meeting(x, y + sign(verticalMovement), COLLIDEABLE)){
		y+=sign(verticalMovement);
	}
	verticalMovement = 0;
}

