INPUT();

// Show Selected
if(global.INPUT_DOWN_released){
	selectedID += 1;
	// Wrap
	selectedID = selectedID % 3;
}
if(global.INPUT_UP_released) {
	selectedID -= 1;
	// Wrap
	if (selectedID < 0) selectedID = 2;
}

// Select
if (global.INPUT_SPACE || global.INPUT_ENTER) {
	audio_stop_all();
	
	if (selectedID == 0){
		room_goto_next();
	}
	else if (selectedID == 1){
		room = rm_Controls;
	}
	else if (selectedID == 2) {
		game_end();
	}
}