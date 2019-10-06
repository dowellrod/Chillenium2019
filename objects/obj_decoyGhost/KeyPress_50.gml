/// @description Insert description here
// You can write your code in this editor
if (decoy1 == true) {
	var this = instance_create_depth(obj_player.x, obj_player.y, 0, obj_decoy1);
	this.path = path;
	instance_destroy();
}