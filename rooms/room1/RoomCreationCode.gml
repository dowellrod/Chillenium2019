audio_stop_all();
global.musicSafe = audio_play_sound(msc_safe,0,infinity);
global.musicDanger = audio_play_sound(msc_danger,0,infinity);
global.safe = true;
audio_sound_gain(global.musicDanger,0,0);
window_set_fullscreen(true);

// Record most recent room
ds_stack_push(global.roomStack,room);