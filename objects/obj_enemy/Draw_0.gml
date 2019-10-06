if (distance_to_object(obj_player) < 128) {
	if (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)) {
			draw_sprite(spr_alerted, 0, x, y - 32);
	}
}
draw_self();

//draw_text(100,100,point_direction(xprevious,yprevious,x,y));