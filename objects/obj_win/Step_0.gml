INPUT();
// Go to previous room
if (global.INPUT_SPACE || global.INPUT_ENTER) {
	audio_stop_all();
	room = rm_TitleScreen;
}