projectile = global.bullet_enemy_small;

event_inherited();

draw_impact_particles = function() {
  part_particles_create(
    global.particles,
    x, y,
    global.particle_impact_flare_enemy_small,
    1
  )
  
  part_particles_create(
    global.particles,
    x, y,
    global.particle_impact_spark_enemy_small,
    1
  )
}