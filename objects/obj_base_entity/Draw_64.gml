/// @description Healthbar

if (shield_bar_opacity > 0) {
  if shielded {
    var full_bar = get_shield_bar_location();
    var shields_remaining_bar = get_shield_bar_location(current_shields / max_shields);

    draw_set_alpha(shield_bar_opacity);

    // Draw background
    draw_rectangle_color(full_bar[0], full_bar[1], full_bar[2], full_bar[3], c_dkgray, c_dkgray, c_black, c_black, false);

    if (shield_bar_damage_opacity > 0) {
      draw_set_alpha(shield_bar_damage_opacity);
      var shields_damage_bar = get_shield_bar_location(previous_shields / max_shields);
      
      draw_rectangle_color(shields_damage_bar[0], shields_damage_bar[1], shields_damage_bar[2], shields_damage_bar[3], c_white, c_white, c_silver, c_silver, false);
      
      shield_bar_damage_opacity = max(shield_bar_damage_opacity - 0.05, 0);
    }
    
    draw_set_alpha(shield_bar_opacity);
    
    // Draw current level
    draw_rectangle_color(shields_remaining_bar[0], shields_remaining_bar[1], shields_remaining_bar[2], shields_remaining_bar[3], c_blue, c_blue, c_navy, c_navy, false);
    
    // Draw outline and gradations
    draw_rectangle_color(full_bar[0], full_bar[1], full_bar[2], full_bar[3], c_dkgray, c_dkgray, c_black, c_black, true);
    
    var bar_width = (full_bar[2] - full_bar[0]);
    draw_line_color(full_bar[0] + (bar_width * 0.25), full_bar[1], full_bar[0] + (bar_width * 0.25), full_bar[3], c_gray, c_dkgray);
    draw_line_color(full_bar[0] + (bar_width * 0.5), full_bar[1], full_bar[0] + (bar_width * 0.5), full_bar[3], c_gray, c_dkgray);
    draw_line_color(full_bar[0] + (bar_width * 0.75), full_bar[1], full_bar[0] + (bar_width * 0.75), full_bar[3], c_gray, c_dkgray);
    
    draw_set_alpha(1);
  }
}
