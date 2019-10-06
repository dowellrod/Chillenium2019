/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(path_position == 1 && siren == false) {
	mySirenImage = instance_create_layer(x,y,"Enemies", obj_siren);
	siren = true;
	alarm[1] = sirenTimer;
}