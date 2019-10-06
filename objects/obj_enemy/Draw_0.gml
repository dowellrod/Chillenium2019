// Sight
draw_sprite(spr_enemy_sightRange, 0, x - 192, y - 192);


if (distance_to_object(obj_player) < 192) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
			draw_sprite(spr_alerted, 0, x, y - 32);
	}
}
else if (distance_to_object(obj_decoy0) < 192) {
	if (!collision_line(x, y, obj_decoy0.x, obj_decoy0.y, obj_wall, false, false)) {
			draw_sprite(spr_alertdecoy, 0, x, y - 32);
	}
}
else if (distance_to_object(obj_decoy1) < 192) {
	if (!collision_line(x, y, obj_decoy1.x, obj_decoy1.y, obj_wall, false, false)) {
			draw_sprite(spr_alertdecoy, 0, x, y - 32);
	}
}
else if (distance_to_object(obj_decoy2) < 192) {
	if (!collision_line(x, y, obj_decoy2.x, obj_decoy2.y, obj_wall, false, false)) {
			draw_sprite(spr_alertdecoy, 0, x, y - 32);
	}
}
else if (distance_to_object(obj_decoy3) < 192) {
	if (!collision_line(x, y, obj_decoy3.x, obj_decoy3.y, obj_wall, false, false)) {
			draw_sprite(spr_alertdecoy, 0, x, y - 32);
	}
}
draw_self();

//draw_text(100,100,point_direction(xprevious,yprevious,x,y));