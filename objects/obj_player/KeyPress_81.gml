/// @description Insert description here
// You can write your code in this editor
if (ghost == false) {
	var this = instance_create_depth(x, y, 0, obj_decoyGhost);
	this.decoy0 = decoy0;
	this.decoy1 = decoy1;
	this.decoy2 = decoy2;
	this.decoy3 = decoy3;
	ghost = true;
}
else {
	instance_destroy(obj_decoyGhost);
	ghost = false;
}