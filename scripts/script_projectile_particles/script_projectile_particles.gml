#region Trails

function draw_projectile_faction_trail(_projectile) {
  if (_projectile.faction) {
    var projectile_trail_particle;
    
    switch (_projectile.faction) {
      case factions.players:
        projectile_trail_particle = global.particle_bullet_trail_faction_players;
        break;
      
      case factions.enemies:
        projectile_trail_particle = global.particle_bullet_trail_faction_enemies;
        break;
      
      case factions.neutrals:
        projectile_trail_particle = global.particle_bullet_trail_faction_neutrals;
        break;
      
      case factions.player_one:
        projectile_trail_particle = global.particle_bullet_trail_faction_player_one;
        break;
      
      case factions.player_two:
        projectile_trail_particle = global.particle_bullet_trail_faction_player_two;
        break;
      
      case factions.player_three:
        projectile_trail_particle = global.particle_bullet_trail_faction_player_three;
        break;
        
      case factions.player_four:
        projectile_trail_particle = global.particle_bullet_trail_faction_player_four;
        break;
    }
    
    if (random(1) < (_projectile.base_power * 15 * 0.01)) {
      part_particles_create(
        global.particles,
        _projectile.x, _projectile.y,
        projectile_trail_particle,
        1
      );
    }
  }
}

function draw_projectile_special_properties_trails(_projectile) {
  // Power Shot Trails
  if (_projectile.power_shot) {
    if (random(1) < 0.15) {
      part_particles_create(
        global.particles,
        _projectile.x, _projectile.y,
        global.particle_bullet_trail_power_shot,
        1
      );
    }
  }
  
  // Seeking Shot Trails
  if (_projectile.seeking_shot) {
    part_particles_create(
      global.particles,
      _projectile.x, _projectile.y,
      global.particle_bullet_trail_seeking_shot_tracer,
      1
    );
  }
}

#endregion Trails

#region Impacts

function draw_projectile_shield_impact(_projectile) {
  part_particles_create(
    global.particles,
    _projectile.x, _projectile.y,
    global.particle_impact_shield_circle,
    1
  )
  
  repeat(irandom_range(25, 35)) {
    part_particles_create(
      global.particles,
      _projectile.x + random_range(-20, 20), _projectile.y + random_range(-20, 20),
      global.particle_impact_shield_sphere,
      1
    )
  }
}

function draw_projectile_special_properties_impacts(_projectile) {
  // Power Shots
  if (_projectile.power_shot) {
    part_particles_create(
      global.particles,
      _projectile.x, _projectile.y,
      global.particle_bullet_impact_power_shot,
      1
    )
  }
  
  // Seeking Shots
  if (_projectile.seeking_shot) {
    part_particles_create(
      global.particles,
      _projectile.x, _projectile.y,
      global.particle_bullet_impact_seeking_shot_a,
      _projectile.base_power * 10
    )
    
    part_particles_create(
      global.particles,
      _projectile.x, _projectile.y,
      global.particle_bullet_impact_seeking_shot_b,
      _projectile.base_power * 10
    )
  }
}

#endregion

