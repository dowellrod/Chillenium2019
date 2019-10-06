INPUT();

// Show Selected
if(global.INPUT_DOWN_released){
	audio_play_sound(snd_menuChange, 1, 0);
	selectedID += 1;
	// Wrap
	selectedID = selectedID % 3;
}
if(global.INPUT_UP_released) {
	audio_play_sound(snd_menuChange, 1, 0);
	selectedID -= 1;
	// Wrap
	if (selectedID < 0) selectedID = 2;
}

// Select
if (global.INPUT_SPACE || global.INPUT_ENTER) {
	
	if (selectedID == 0){
		audio_stop_all();
		room = rm_Summary;
	}
	else if (selectedID == 1){
		room = rm_Controls;
	}
	else if (selectedID == 2) {
		audio_stop_all();
		game_end();
	}
}