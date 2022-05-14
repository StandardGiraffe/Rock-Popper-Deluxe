if (enabled) {
  if (point_distance(source.x, source.y, recipient.x, recipient.y) > max_range * 1.5) { clean_up(); }
  
  lifespan --;
  
  // Relocate to somewhere on the source
  var coords = coords_on_sprite(source.x, source.y, source.image_angle, source.sprite_height, source.sprite_width)
  x = coords[0];
  y = coords[1];
  //x = source.x + irandom_range(-source.sprite_width / 2, source.sprite_width / 2);
  //y = source.y + irandom_range(-source.sprite_height / 2, source.sprite_height / 2);


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
      }
    ]
  )
  
  drawn_particles();
  
    
  if (recipient.shielded && recipient.current_shields == recipient.max_shields) {
    var drawn_particles = array_sample(
      [
        function() {
          part_particles_create(
            global.particles_debris, irandom_range(recipient.x + 3, recipient.x - 3), irandom_range(recipient.y + 3, recipient.y - 3),
            particle3, irandom_range(0, 5)
          )
        },
      
        function() {
          part_particles_create(
            global.particles_debris, irandom_range(recipient.x + 3, recipient.x - 3), irandom_range(recipient.y + 3, recipient.y - 3),
            particle4, irandom_range(0, 2)
          )
        }
      ]
    )
  
    drawn_particles();
  }

  if (lifespan <= 0) {
    clean_up();
  }
}