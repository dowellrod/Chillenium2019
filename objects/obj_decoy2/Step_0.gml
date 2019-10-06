/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// Invisibility
if(isInvisable) image_alpha = .5;
else image_alpha = 1;

if (path_position == 1 && timerIsSet == false) {
	timerIsSet = true;
	alarm[1] = destroyTimerLength;
	isInvisable = false;
}