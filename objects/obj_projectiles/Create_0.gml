//global.bullet_player = {
//  base_speed: global.base_stats.bullet_speed,
//  base_power: 1,
//  trail: global.particle_bullet_trail_small,
//  shield_damage_multiplier: 10,
//  impact_particles: function(_x, _y) {
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_flare_small,
//      1
//    )
  
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_spark_small,
//      1
//    )
  
//    if power_shot {
//      part_particles_create(
//        global.particles,
//        _x, _y,
//        global.particle_impact_power_shot_ring,
//        1
//      )
//    }
//  }
//}

//global.bullet_enemy_tiny = {
//  base_speed: 10,
//  base_power: 3,
//  trail: global.particle_bullet_trail_enemy_tiny,
//  shield_damage_multiplier: 5,
//  impact_particles: function(_x, _y) {
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_flare_enemy_tiny,
//      1
//    )
  
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_spark_enemy_tiny,
//      1
//    )
//  }
//}

//global.bullet_enemy_small = {
//  base_speed: 8,
//  base_power: 5,
//  trail: global.particle_bullet_trail_enemy_small,
//  shield_damage_multiplier: 4,
//  impact_particles: function(_x, _y) {
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_flare_enemy_small,
//      1
//    )
  
//    part_particles_create(
//      global.particles,
//      _x, _y,
//      global.particle_impact_spark_enemy_small,
//      1
//    )
//  }
//}