projectile = global.bullet_player;

event_inherited();

draw_impact_particles = function() {
  part_particles_create(
    global.particles,
    x, y,
    global.particle_impact_flare_small,
    1
  )
  
  part_particles_create(
    global.particles,
    x, y,
    global.particle_impact_spark_small,
    1
  )
}