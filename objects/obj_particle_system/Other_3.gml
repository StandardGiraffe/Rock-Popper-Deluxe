/// @description Destroy particles

array_foreach(
  [
    global.particle_bullet_trail_faction_players,
    global.particle_bullet_trail_faction_enemies,
    global.particle_bullet_trail_faction_player_one,
    global.particle_bullet_trail_faction_player_two,
    global.particle_bullet_trail_faction_player_three,
    global.particle_bullet_trail_faction_player_four,
    global.particle_bullet_trail_faction_neutrals,
    
    global.particle_bullet_trail_power_shot,
    global.particle_bullet_impact_power_shot,
    global.particle_bullet_trail_seeking_shot_tracer,
    global.particle_bullet_impact_seeking_shot_a,
    global.particle_bullet_impact_seeking_shot_b,
    
    global.particle_impact_flare_enemy_small,
    global.particle_impact_spark_enemy_small,
    global.particle_impact_flare_enemy_tiny,
    global.particle_impact_spark_enemy_tiny,
    global.particle_impact_flare_small,
    global.particle_impact_spark_small,
    
    global.particle_impact_shield_circle,
    global.particle_impact_shield_sphere,
    global.particle_shield_popping_circle,
    global.particle_shield_popping_sphere,
    
    global.particle_debris_tiny_hot,
    global.particle_debris_glass_dust_a,
    global.particle_debris_glass_dust_b,
    global.particle_debris_small_hot,
    global.particle_debris_asteroid,
    global.particle_debris_droid,
    global.particle_debris_platform_core,
    
    global.particle_beam_grapple_muzzle,
    global.particle_beam_grapple_impact,
    global.particle_beam_point_defence_muzzle,
    global.particle_beam_point_defence_impact,
    global.particle_beam_shield_drain_impact,
    
    global.particle_powerup_gold_sparkle,
    global.particle_powerup_silver_sparkle
  ],
  function(particle) { part_type_destroy(particle) }
)

array_foreach(
  [
    global.particles,
    global.particles_debris
  ],
  function(particle_system) {
    part_emitter_destroy_all(particle_system);
    part_system_destroy(particle_system);
  }
)
