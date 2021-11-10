function shoot_projectile(_projectile_id, _x, _y, _direction) {
  var projectile = instance_create_layer(
    _x, _y, "Projectiles", _projectile_id
  );
  
  projectile.set_direction(_direction);
  
  //projectile.image_angle = _direction;
  
  //if global.powerups_inventory.bullet_speed_shot {
  //  projectile.max_speed = global.stats.bullet_speed * 2;
  //} else {
  //  projectile.max_speed = global.stats.bullet_speed;
  //}
  
  //if global.powerups_inventory.bullet_power_shot {
  //  projectile.power = global.stats.bullet_power * 2;
  //} else {
  //  projectile.power = global.stats.bullet_power;
  //}
  
  return projectile;
}

function draw_bullet_impact_particles(_x, _y) {
  part_particles_create(
    global.particles,
    _x, _y,
    global.particle_impact_flare_small,
    1
  )
  
  part_particles_create(
    global.particles,
    _x, _y,
    global.particle_impact_spark_small,
    1
  )
  
  if global.powerups_inventory.bullet_power_shot {
    part_particles_create(
      global.particles,
      _x, _y,
      global.particle_impact_power_shot_ring,
      1
    )
  }
}

function setup_player_shot(_bullet) {
  var damage_bonus = global.powerups_inventory.bullet_power_shot ? 1 : 0;
  var speed_bonus = global.powerups_inventory.bullet_speed_shot ? 1.75 : 1;
  
  _bullet.shot_power += damage_bonus;
  
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
}