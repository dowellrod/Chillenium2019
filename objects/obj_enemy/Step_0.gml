/// @description Player detection
if (distance_to_object(obj_player) < 128) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
		lastx = obj_player.x;
		lasty = obj_player.y;
		canSee = true;
	}
	else canSee = false;
} else if (distance_to_object(obj_decoy0) < 128) {
	if (!collision_line(x, y, obj_decoy0.x, obj_decoy0.y, obj_wall, false, false)) {
		lastx = obj_decoy0.x;
		lasty = obj_decoy0.y;
		canSee = true;
	} 
	else canSee = false;
} else if (distance_to_object(obj_decoy1) < 128) {
	if (!collision_line(x, y, obj_decoy1.x, obj_decoy1.y, obj_wall, false, false)) {
		lastx = obj_decoy1.x;
		lasty = obj_decoy1.y;
		canSee = true;
	} 
	else canSee = false;
} else if (distance_to_object(obj_decoy2) < 128) {
	if (!collision_line(x, y, obj_decoy2.x, obj_decoy2.y, obj_wall, false, false)) {
		lastx = obj_decoy2.x;
		lasty = obj_decoy2.y;
		canSee = true;
	} 
	else canSee = false;
} else if (distance_to_object(obj_decoy3) < 128) {
	if (!collision_line(x, y, obj_decoy3.x, obj_decoy3.y, obj_wall, false, false)) {
		lastx = obj_decoy3.x;
		lasty = obj_decoy3.y;
		canSee = true;
	} 
	else canSee = false;
}
else {
	canSee = false;
}
mp_potential_step(lastx, lasty, 1, false);
//mp_potential_step(lastx, lasty, 1, false);


	var spr_dir = point_direction(xprevious,yprevious,x,y)
if (canSee) {
	// 0
	if ((spr_dir > 337.5 && spr_dir < 360) || (spr_dir > 0 && spr_dir < 22.5))  sprite_index = global.en_sprite_0;
	// 45
	if (spr_dir > 22.5  && spr_dir < 67.5)  sprite_index = global.en_sprite_45;
	// 90
	if (spr_dir > 67.5  && spr_dir < 112.5) sprite_index = global.en_sprite_90;
	// 135
	if (spr_dir > 112.5 && spr_dir < 157.5) sprite_index = global.en_sprite_135;
	// 180
	if (spr_dir > 157.5 && spr_dir < 202.5) sprite_index = global.en_sprite_180;
	// 225
	if (spr_dir > 202.5 && spr_dir < 247.5) sprite_index = global.en_sprite_225;
	// 270
	if (spr_dir > 247.5 && spr_dir < 292.5) sprite_index = global.en_sprite_270;
	// 315
	if (spr_dir > 292.5 && spr_dir < 337.5) sprite_index = global.en_sprite_315;
}
else if (!canSee) {
	// 0
	if ((spr_dir > 337.5 && spr_dir < 360) || (spr_dir > 0 && spr_dir < 22.5))  sprite_index = global.en_sprite_0;
	// 45
	if (spr_dir > 22.5  && spr_dir < 67.5)  sprite_index = global.enAlt_sprite_45;
	// 90
	if (spr_dir > 67.5  && spr_dir < 112.5) sprite_index = global.enAlt_sprite_90;
	// 135
	if (spr_dir > 112.5 && spr_dir < 157.5) sprite_index = global.enAlt_sprite_135;
	// 180
	if (spr_dir > 157.5 && spr_dir < 202.5) sprite_index = global.enAlt_sprite_180;
	// 225
	if (spr_dir > 202.5 && spr_dir < 247.5) sprite_index = global.enAlt_sprite_225;
	// 270
	if (spr_dir > 247.5 && spr_dir < 292.5) sprite_index = global.enAlt_sprite_270;
	// 315
	if (spr_dir > 292.5 && spr_dir < 337.5) sprite_index = global.enAlt_sprite_315;
}
else sprite_index = spr_idle;