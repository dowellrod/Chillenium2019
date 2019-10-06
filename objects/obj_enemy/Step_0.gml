/// @description Player detection
if (distance_to_object(obj_player) < 192) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
		lastx = obj_player.x;
		lasty = obj_player.y;
		canSee = true;
		global.safe = false
		path_end();
	}
	else {
		canSee = false;
		global.safe = true;
	}
} else if (distance_to_object(obj_decoy0) < 192) {
	if (!collision_line(x, y, obj_decoy0.x, obj_decoy0.y, obj_wall, false, false)) {
		lastx = obj_decoy0.x;
		lasty = obj_decoy0.y;
		canSee = true;
		path_end();
	} 
	else canSee = false;
} else if (distance_to_object(obj_decoy1) < 192) {
	
	// Siren Check
	if(instance_exists(obj_decoy1)){
		if (distance_to_object(obj_decoy1) < obj_decoy1.sirenRange && obj_decoy1.siren == true) {
			lastx = obj_decoy1.x;
			lasty = obj_decoy1.y;
			canSee = true;
			path_end();
		}
	}
	else canSee = false;
	if (!collision_line(x, y, obj_decoy1.x, obj_decoy1.y, obj_wall, false, false)) {
		lastx = obj_decoy1.x;
		lasty = obj_decoy1.y;
		canSee = true;
		path_end();
	} 
	else canSee = false;
} else if (distance_to_object(obj_decoy2) < 192) {
	if (!collision_line(x, y, obj_decoy2.x, obj_decoy2.y, obj_wall, false, false)) {
		if(obj_decoy2.isInvisable == false) {
			lastx = obj_decoy2.x;
			lasty = obj_decoy2.y;
			canSee = true;
			path_end();
		}
	}
	else canSee = false;
} else if (distance_to_object(obj_decoy3) < 192) {
	if (!collision_line(x, y, obj_decoy3.x, obj_decoy3.y, obj_wall, false, false)) {
		lastx = obj_decoy3.x;
		lasty = obj_decoy3.y;
		canSee = true;
		path_end();
	} 
	else canSee = false;
}
else {
	canSee = false;
}

if (path_index == -1) {
	mp_potential_step(lastx, lasty, 2.5, false);
	//mp_potential_step(lastx, lasty, 1, false);
} else {
	canSee = false;
}


	var spr_dir = point_direction(xprevious,yprevious,x,y)
if (canSee) {
	// 0
	if ((direction > 337.5 && direction < 360) || (direction > 0 && direction < 22.5))  sprite_index = global.en_sprite_0;
	// 45
	if (direction > 22.5  && direction < 67.5)  sprite_index = global.en_sprite_45;
	// 90
	if (direction > 67.5  && direction < 112.5) sprite_index = global.en_sprite_90;
	// 135
	if (direction > 112.5 && direction < 157.5) sprite_index = global.en_sprite_135;
	// 180
	if (direction > 157.5 && direction < 202.5) sprite_index = global.en_sprite_180;
	// 225
	if (direction > 202.5 && direction < 247.5) sprite_index = global.en_sprite_225;
	// 270
	if (direction > 247.5 && direction < 292.5) sprite_index = global.en_sprite_270;
	// 315
	if (direction > 292.5 && direction < 337.5) sprite_index = global.en_sprite_315;
}
else if (!canSee) {
	// 0
	if ((direction > 337.5 && direction < 360) || (direction > 0 && direction < 22.5))  sprite_index = global.en_sprite_0;
	// 45
	if (direction > 22.5  && direction < 67.5)  sprite_index = global.enAlt_sprite_45;
	// 90
	if (direction > 67.5  && direction < 112.5) sprite_index = global.enAlt_sprite_90;
	// 135
	if (direction > 112.5 && direction < 157.5) sprite_index = global.enAlt_sprite_135;
	// 180
	if (direction > 157.5 && direction < 202.5) sprite_index = global.enAlt_sprite_180;
	// 225
	if (direction > 202.5 && direction < 247.5) sprite_index = global.enAlt_sprite_225;
	// 270
	if (direction > 247.5 && direction < 292.5) sprite_index = global.enAlt_sprite_270;
	// 315
	if (direction > 292.5 && direction < 337.5) sprite_index = global.enAlt_sprite_315;
}
else sprite_index = spr_idle;