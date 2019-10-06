draw_sprite(spr_ControlButton, 0, room_width/2, 602 + 144*2)

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_text(room_width/2, 602 + 144*2 + 64, "To Title");
draw_text_transformed(room_width/2, room_height/2 - 100, "YOU ESCAPED!", 2, 2, image_angle);

//draw_text()