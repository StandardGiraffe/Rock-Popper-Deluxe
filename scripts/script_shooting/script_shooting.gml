function shoot_projectile(_projectile_id, _x, _y, _direction, _sound_effect_id = undefined) {
  if _sound_effect_id { audio_play_sound(_sound_effect_id, 0, 0); }
  
  var projectile = instance_create_layer(
    _x, _y, "Projectiles", _projectile_id
  );
  
  projectile.set_direction(_direction);
  
  return projectile;
}

function draw_bullet_impact_particles(_impact_particle_function, _x, _y) {
  _impact_particle_function(_x, _y);
}

function setup_player_shot(_bullet) {
  var damage_bonus = global.powerups_inventory.bullet_power_shot ? 2 : 1;
  var speed_bonus = global.powerups_inventory.bullet_speed_shot ? 1.75 : 1;
  
  _bullet.shot_power *= damage_bonus;
  _bullet.shot_power_vs_shields *= damage_bonus;
  
  _bullet.max_speed *= speed_bonus;
  _bullet.velocity.multiply(speed_bonus);
  
  _bullet.void_persistent = global.powerups_inventory.bullet_void_shot;
  
  return _bullet
}

function draw_bullet_impact_shields_particles(_x, _y) {
  part_particles_create(
    global.particles,
    _x, _y,
    global.particle_impact_shield_circle,
    1
  )
  
  repeat(irandom_range(25, 35)) {
    part_particles_create(
      global.particles,
      _x + random_range(-20, 20), _y + random_range(-20, 20),
      global.particle_impact_shield_sphere,
      1
    )
  }
  
  if global.powerups_inventory.bullet_power_shot {
    part_particles_create(
      global.particles,
      _x, _y,
      global.particle_impact_power_shot_ring,
      1
    )
  }
}