if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
		draw_sprite(spr_alerted, 0, x, y - 16);
}
draw_self();
