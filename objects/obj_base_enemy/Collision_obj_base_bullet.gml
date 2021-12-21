if (other.faction != faction) {
  var impact_direction = other.get_direction();
  var own_velocity = new vector_lengthdir(speed, direction);

  if (shielded) {
    var damage_taken = other.shot_power_vs_shields(own_velocity);
    var impact_magnitude = 0;
  
    draw_bullet_impact_shields_particles(other.x, other.y);
    
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
      shielded = false
      sprite_index = enemy.sprites[0];
      flash_colour = c_teal;
      audio_play_sound(snd_enemy_shields_down, 0, 0);
      draw_shield_pop(self);
  
    } else {
      //var shield_percent_left = string_format(
      //  (current_shields / max_shields * 100),
      //  4, 2
      //);
      //display_popup(shield_percent_left, x, y, undefined,
      //  [ c_aqua, c_aqua, c_blue, c_blue], 0.1
      //);
      flash_colour = c_aqua;
      audio_play_sound(snd_enemy_shields_hit, 0, 0);
    }
  
    flash_alpha = 1;
  
  } else {
    var damage_taken = other.shot_power(own_velocity);
    var impact_magnitude = ((damage_taken * 8) + other.get_current_speed()) / enemy.mass;

    draw_bullet_impact_particles(other.projectile.impact_particles, other.x, other.y);
    instance_destroy(other);
  
    // Take damage:
    flash_colour = c_white;
    flash_alpha = 1;  // Start the damage flash animation
    current_hitpoints -= damage_taken;

    // Show damage:
    var _current_sprite = sprite_index;
    var _new_sprite = sprite_based_on_damage(enemy.sprites);
    if (_current_sprite != _new_sprite) {
      generate_debris(
        x, y,
        enemy.type,
        (sprite_width * sprite_height / 1500),
        image_angle,
        sprite_height, sprite_width
      );
  
      sprite_index = _new_sprite;
    }

    if (current_hitpoints <= 0) {
      instance_destroy();
    } else {
      audio_play_sound(enemy.hit_sound, 0, 0);
    }  
  }
  
  // Update direction
  motion_add(impact_direction, impact_magnitude);  
}
