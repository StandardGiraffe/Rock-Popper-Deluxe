if (draw_hud) {
  draw_set_halign(fa_left);
  draw_set_valign(fa_top);
  draw_set_font(fnt_small);
  draw_set_color(c_gray);
  if (global.stats.points > -1) {
    draw_text(64, 32, "Score: " + string(global.stats.points));
  }
  
  if (global.stats.lives > -1) {
    draw_text(64, 48, "Lives: " + string(global.stats.lives));
  }
  
  if (global.wave > -1) {
    draw_text(64, 64, "Wave: " + string(global.wave));
  }

  if (instance_exists(obj_player)) {
    if (obj_player.shielded) {
      draw_text_color(64, 80, "SHIELDS: " + string_format(obj_player.current_shields / obj_player.max_shields * 100, 3, 0) + "%", c_aqua, c_aqua, c_blue, c_blue, 1);  
    } else {
      draw_text_color(64, 80, "SHIELDS DOWN", c_red, c_red, c_maroon, c_maroon, 1);
    }  
  }
  

  draw_set_halign(fa_center);
  draw_set_color(c_dkgrey);
  draw_text(room_width / 2, room_height - 24, "Press R to Restart or Press Q to Quit");
}
