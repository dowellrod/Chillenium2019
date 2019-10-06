/// @description Insert description here
// You can write your code in this editor
if (decoy2 == true) {
	var this = instance_create_depth(obj_player.x, obj_player.y, 0, obj_decoy2);
	this.path = path;
	instance_destroy();
}