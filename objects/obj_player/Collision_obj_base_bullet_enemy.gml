if !spawning {
  draw_bullet_impact_particles(other.projectile.impact_particles, other.x, other.y);

  if (global.stats.shielded) {
    var impact_direction = other.get_direction();
    var impact_magnitude = (other.shot_power() * other.shot_power_vs_shields() * other.get_current_speed()) / 140;
    var damage_taken = other.shot_power_vs_shields();
  
    instance_destroy(other);
  
    // Take damage:
    global.stats.current_shields -= damage_taken;
  
    if (global.stats.current_shields <= 0) {
      shields_down();
    } else {
      var shield_percent_left = string_format(
        (global.stats.current_shields / global.stats.max_shields * 100),
        4, 2
      );
      display_popup(shield_percent_left, x, y, undefined,
        [ c_aqua, c_aqua, c_blue, c_blue], 0.1
      );
      audio_play_sound(snd_enemy_shields_hit, 0, 0);
    }
  
    motion_add(impact_direction, impact_magnitude);
  
  } else {
    instance_destroy(other);
    self.impacted();
  }  
}
