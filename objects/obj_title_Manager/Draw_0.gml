// Draw buttons
for(i = 0; i < 3; i++) draw_sprite(spr_ControlButton, 0, room_width/2, 652 + i * 144);

// Draw Arrow
arrowLocY = 652+64 + selectedID * 144;
draw_sprite(spr_selectArrow, 0, 700, arrowLocY);

// Draw Text
draw_set_halign(fa_center);
draw_set_valign(fa_center)
draw_set_font(fnt_title);
draw_text(room_width/2, 652 + 64, "S t a r t");
draw_text(room_width/2, 652 + 144*1 + 64, "C o n t r o l s");
draw_text(room_width/2, 652 + 144*2 + 64, "Q u i t");