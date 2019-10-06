/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (ghost == false) {
	INPUT();
	Sprite_List();
	script_execute(state[global.currentState]);
}
path_add_point(path, x, y, 100);
