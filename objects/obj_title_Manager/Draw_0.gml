// Draw buttons
for(i = 0; i < 3; i++) draw_sprite(spr_ControlButton, 0, room_width/2, 652 + i * 144);

// Draw Text
draw_set_halign(fa_center);
draw_set_valign(fa_center)
draw_set_font(fnt_title);
draw_set_color(c_aqua);

// Draw Arrow
arrowLocY = 652+64 + selectedID * 144;
draw_sprite(spr_selectArrow, 0, 700, arrowLocY);

draw_text(room_width/2, 652 + 64, "Start");
draw_text(room_width/2, 652 + 144*1 + 64, "Controls");
draw_text(room_width/2, 652 + 144*2 + 64, "Quit");