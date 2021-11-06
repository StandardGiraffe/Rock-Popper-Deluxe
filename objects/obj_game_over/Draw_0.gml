draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - 50, hero_text);
draw_set_font(fnt_small);

draw_text(room_width / 2, room_height / 2 + 4, "Wave Reached: " + string(global.wave - 1));
draw_text(room_width / 2, room_height / 2 + 20, "Final Score: " + string(global.stats.points));
draw_text(room_width / 2, room_height / 2 + 46, "Press R to Restart or Press Q to Quit");