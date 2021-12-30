function shoot_projectile(_projectile_id, _shooter, _x, _y, _direction, _sound_effect_id = undefined, guns_vector) {
  if _sound_effect_id { audio_play_sound(_sound_effect_id, 0, 0); }
  
  var projectile = instance_create_layer(
    _x, _y, "Projectiles", _projectile_id
  );
  
  projectile.faction = _shooter.faction;
  projectile.shooter = _shooter;
  projectile.set_direction(_direction, guns_vector);
  
  return projectile;
}

function draw_bullet_impact_particles(_bullet) {
  _bullet.impact_particles(_bullet.x, _bullet.y);
}

function setup_player_shot(_bullet, _shooter) {
  var damage_bonus = _shooter.powerups_inventory.bullet_power_shot ? 2 : 1;
  var speed_bonus = _shooter.powerups_inventory.bullet_speed_shot ? 1.75 : 1;
  
  _bullet.base_power *= damage_bonus;
  //_bullet.shot_power_vs_shields() *= damage_bonus;
  
  _bullet.base_speed *= speed_bonus;
  _bullet.velocity.multiply(speed_bonus);
  
  _bullet.void_persistent = _shooter.powerups_inventory.bullet_void_shot;
  _bullet.power_shot = _shooter.powerups_inventory.bullet_power_shot;

  return _bullet
}