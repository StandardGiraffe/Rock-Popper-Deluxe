faction = factions.neutrals;
killer = noone;

invulnerable = false;
invulnerable_while_spawning = false;

shield_impact_shove_multiplier = 1;
mass = 1;
inertia_rate = 0;
hit_sound = snd_struck;

shielded = false;
repulsor_shielded = false;
current_shields = 0;
max_shields = 0;
shield_bar_opacity = 0;
shield_bar_damage_opacity = 0;
previous_shields = 0;

void_persistent = true;

flash_alpha = 0;
flash_colour = c_white;

// Returns x1, y1, x2, y2
function get_shield_bar_location(_remaining_normal = 1, _damage_start_normal = 0) {
  var bar_width = (sprite_width + sprite_height) / 2;
  var x1 = (x - (bar_width / 2) + (bar_width * _damage_start_normal));
  var x2 = x1 + bar_width * _remaining_normal;
  var y1 = (y + (sprite_height / 2) + 10);
  var y2 = y1 + 8;
  
  return [ x1, y1, x2, y2 ];
}

function is_repulsor_shielded() {
  return repulsor_shielded;
}

function is_currently_vulnerable() {
  if (invulnerable) {
    return false;
  }
  
  if (invulnerable_while_spawning) {
    if (spawning) return false;
  }
  
  return true;
}

function be_shot(bullet) {
  var own_velocity = new vector_lengthdir(speed, direction);
  
  var impact_direction = bullet.get_direction();
  var impact_magnitude;
  var damage_taken;
  
  if (shielded) {
    display_shielded_impact(bullet);
    
    damage_taken = bullet.shot_power_vs_shields(own_velocity);  // Player originally ignored own_velocity.  Check if this is necessary.
    impact_magnitude = ((bullet.shot_power() * bullet.shot_power_vs_shields() * bullet.get_current_speed()) / 140) * shield_impact_shove_multiplier;
    
    damage_shields(damage_taken, bullet.shooter);
    
  } else {
    display_unshielded_impact(bullet);
    
    damage_taken = bullet.shot_power(own_velocity);
    impact_magnitude = ((damage_taken * 8) + bullet.get_current_speed()) / mass;
    
    damage_body(damage_taken, bullet.shooter);   
  }
  
  // Handle bullet deflection/absorption
  if (shielded && is_repulsor_shielded()) {
    display_shielded_impact(bullet);
    
    bullet.faction = self.faction;
    bullet.void_persistent = true;
    bullet.set_direction(angle_of_deflection(
      bullet.x, bullet.y, self, impact_direction
    ));
  } else {
    instance_destroy(bullet);
  }
  
  be_shoved(impact_direction, impact_magnitude);
}

function display_shielded_impact(bullet) {
  bullet.draw_impact_particles();
  draw_projectile_special_properties_impacts(bullet);
  draw_projectile_shield_impact(bullet);
}

function display_unshielded_impact(bullet) {
  bullet.draw_impact_particles();
  draw_projectile_special_properties_impacts(bullet);
}

function be_impacted(_impactor) {
  if (_impactor.faction == faction) { return; }
  if (invulnerable_while_spawning && spawning) { return; }
  
  if (shielded) {
    if (_impactor.shielded) {
      damage_shields(max(_impactor.current_shields, 10), _impactor);
    } else {
      damage_shields(max(_impactor.current_hitpoints * 10, 10), _impactor);
    }
    
  } else {
    if (_impactor.shielded) {
      damage_body(max(_impactor.speed, max(_impactor.current_hitpoints, 1)), _impactor);
    } else {
      damage_body(max(_impactor.current_hitpoints, 1), _impactor);
    }
  }
  
  spawn_in(0.01, 0.5);
}

// A general purpose damage input for non-bullets.
function be_damaged(damage_taken, _shooter = noone, shield_damage_multiplier = 1) {
  if (shielded) {
    damage_shields(damage_taken * shield_damage_multiplier, _shooter);
  } else {
    damage_body(damage_taken, _shooter);
  }
}

function damage_shields(damage_taken, _shooter) {
  if (!shielded) { return };
  
  if (shield_bar_damage_opacity == 0) {
    previous_shields = current_shields;
  }
  
  shield_bar_opacity = 1;
  shield_bar_damage_opacity = 1;
  current_shields -= damage_taken;
  
  if (current_shields <= 0) {
    shields_down();
  } else {
    audio_play_sound(snd_enemy_shields_hit, 0, 0);
  }
  
  flash_colour = c_aqua;
  flash_alpha = 1;
}

function damage_body(damage_taken, _shooter) {
  flash_colour = c_white;
  flash_alpha = 1;  // Start the damage flash animation
  
  current_hitpoints -= damage_taken;
  show_body_damage();
  
  if (current_hitpoints <= 0) {
    be_killed(_shooter);
  } else {
    audio_play_sound(hit_sound, 0, 0);
  }  
}

function show_body_damage() { }

function be_shoved(_direction, _length, _account_for_mass = false, _show_shadow_trail = false) {
  motion_add(_direction, _length);
}

function be_killed(_killer = noone) {
  killer = _killer;
  
  instance_destroy();
}

function shields_down() {
  shielded = false
  flash_colour = c_teal;
  audio_play_sound(snd_enemy_shields_down, 0, 0);
  draw_shield_pop(self);
}

function apply_inertia(_inertia_rate) {
  speed = max(speed - _inertia_rate, 0);
}