audio_stop_all();
global.musicSafe = audio_play_sound(msc_safe,0,9999);
global.musicDanger = audio_play_sound(msc_danger,0,9999);
global.safe = true;
audio_sound_gain(global.musicDanger,0,0);
window_set_fullscreen(true);