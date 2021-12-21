if (!spawning && other.faction != faction) {
  draw_bullet_impact_particles(other.projectile.impact_particles, other.x, other.y);

  if (shielded) {
    var impact_direction = other.get_direction();
    var impact_magnitude = (other.shot_power() * other.shot_power_vs_shields() * other.get_current_speed()) / 140;
    var damage_taken = other.shot_power_vs_shields();
  
   if (is_repulsor_shielded()) {
      other.faction = self.faction;
      other.void_persistent = true;
      other.set_direction(angle_of_deflection(
        other.x, other.y, self, other.get_direction()
      ));
    } else {
      instance_destroy(other);
    }
  
    // Take damage:
    if (shield_bar_damage_opacity == 0) {
      previous_shields = current_shields;
    }
    
    shield_bar_opacity = 1;
    shield_bar_damage_opacity = 1;
    current_shields -= damage_taken;
  
    if (current_shields <= 0) {
      shields_down();
    } else {
      //var shield_percent_left = string_format(
      //  (current_shields / max_shields * 100),
      //  4, 2
      //);
      //display_popup(shield_percent_left, x, y, undefined,
      //  [ c_aqua, c_aqua, c_blue, c_blue], 0.1
      //);
      audio_play_sound(snd_enemy_shields_hit, 0, 0);
    }
  
    motion_add(impact_direction, impact_magnitude);
  
  } else {
    instance_destroy(other);
    self.impacted();
  }  
}
