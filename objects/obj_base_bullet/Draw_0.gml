if fading {
  image_alpha -= 0.03;
  
  if (image_alpha <= 0.04) {
    instance_destroy();
  }
}

maybe_do(shot_power * 15, function() {
  part_particles_create(
    global.particles,
    x, y,
    projectile.trail,
    1
  );
})

image_angle = velocity.get_direction();

draw_self();