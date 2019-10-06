INPUT();

if(global.INPUT_ESCAPE) game_end();

// Music
if(global.safe == true)       audio_sound_gain(global.musicDanger, 0, 0);
else if(global.safe == false) audio_sound_gain(global.musicDanger, 1, 0);
