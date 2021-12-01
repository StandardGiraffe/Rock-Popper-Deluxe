/// @description Destroy particles

array_foreach(
  [
    global.particle_bullet_trail_enemy_small,
    global.particle_impact_flare_enemy_small,
    global.particle_impact_spark_enemy_small,
    global.particle_bullet_trail_enemy_tiny,
    global.particle_impact_flare_enemy_tiny,
    global.particle_impact_spark_enemy_tiny,
    global.particle_bullet_trail_small,
    global.particle_impact_flare_small,
    global.particle_impact_spark_small,
    global.particle_impact_power_shot_ring,
    global.particle_impact_shield_circle,
    global.particle_impact_shield_sphere,
    global.particle_debris_tiny_hot,
    global.particle_debris_small_hot,
    global.particle_debris_asteroid,
    global.particle_debris_droid,
    global.particle_powerup_gold_sparkle
  ],
  function(particle) { part_type_destroy(particle) }
)

part_system_destroy(global.particles);
part_system_destroy(global.particles_debris);
