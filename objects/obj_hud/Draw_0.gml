if (draw_hud) {
  for (var i = 0; i < array_length(global.players); i++) {
    var player = global.players[i];
    var h_offset = 64 + (i * 150);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(fnt_small);
    draw_set_color(c_gray);
    
    if instance_exists(player) {
      draw_set_alpha(1);
    } else {
      draw_set_alpha(0.35);
    }
    
    if (player) {
      draw_set_color(c_white);
      draw_text(h_offset, 16, player.moniker);
      draw_set_color(c_gray);
    }
      
    if (player.stats.points > -1) {
      draw_text(h_offset, 32, "Score: " + string(player.stats.points));
    }
  
    if (player.stats.lives > -1) {
      draw_text(h_offset, 48, "Lives: " + string(player.stats.lives));
    }
  
    if (global.wave > -1) {
      draw_text(h_offset, 64, "Wave: " + string(global.wave));
    }

    if (player.shielded) {
      draw_text_color(h_offset, 80, "SHIELDS: " + string_format(player.current_shields / player.max_shields * 100, 3, 0) + "%", c_aqua, c_aqua, c_blue, c_blue, 1);  
    } else {
      draw_text_color(h_offset, 80, "SHIELDS DOWN", c_red, c_red, c_maroon, c_maroon, 1);
    }  
  }

  draw_set_halign(fa_center);
  draw_set_color(c_white);
  draw_set_alpha(0.3);
  draw_text(room_width / 2, room_height - 24, "Press R to Restart or Press Q to Quit");
  draw_set_alpha(1);
}
