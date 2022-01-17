if (enabled) {
  if (point_distance(source.x, source.y, recipient.x, recipient.y) > max_range * 1.5) { clean_up(); }
  
  lifespan --;

  var drawn_particles = array_sample(
    [
      function() {
        part_particles_create(
          global.particles_debris, irandom_range(x + 3, x - 3), irandom_range(y + 3, y - 3),
          particle, irandom_range(0, 5)
        )
      },
      
      function() {
        part_particles_create(
          global.particles_debris, irandom_range(x + 3, x - 3), irandom_range(y + 3, y - 3),
          particle2, irandom_range(0, 2)
        )
      },
      function() { },
      function() { },
      function() { }
    ]
  )
  
  drawn_particles();

  if (lifespan <= 0) {
    clean_up();
  }
}