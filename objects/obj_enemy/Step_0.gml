/// @description Player detection
if (distance_to_object(obj_player) < 128) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
		lastx = obj_player.x;
		lasty = obj_player.y;
	}
}
mp_potential_step(lastx, lasty, 1, true);