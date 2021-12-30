draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_large);
draw_set_color(c_white);
draw_text(room_width / 2, room_height / 2 - 50, hero_text);
draw_set_font(fnt_small);

var line_vertical_offset = room_height / 2 + 4;
draw_text(room_width / 2, line_vertical_offset, "Wave Reached: " + string(global.wave - 1));

for (var i = 0; i < array_length(global.players); i++) {
  line_vertical_offset += 16;
  var player = global.players[i];
  draw_text(room_width / 2, line_vertical_offset, "Final Score for " + string(player.moniker) + ": " + string(player.stats.points));
}

line_vertical_offset += 26;

draw_text(room_width / 2, line_vertical_offset, "Press R to Restart or Press Q to Quit");