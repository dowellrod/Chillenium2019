draw_sprite(spr_ControlButton, 0, room_width/2, 602 + 144*2)

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fnt_title);
draw_set_color(c_aqua);
draw_text_transformed(960, 250, "You are Krill.", 1, 1, image_angle);
draw_text_transformed(960, 400, "After a rough day of delivering packages across the galaxy", .5, .5, image_angle);
draw_text_transformed(960, 450, "you fell asleep at the wheel and crash landed on a foreign planet.", .5, .5, image_angle);
draw_text_transformed(960, 500, "You awoke as space pirates captured you and took you to their base.", .5, .5, image_angle);
draw_text_transformed(960, 600, "Your only hope is to sneak past them...", .75, .75, image_angle);
draw_text_transformed(960, 650, "With your gang of dopplegangers!", .75, .75, image_angle);
draw_text(room_width/2, 602 + 144*2 + 64, "P l a y   G a m e !");
