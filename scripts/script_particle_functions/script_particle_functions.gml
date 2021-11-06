// Returns a random point on the given sprite as the array: [x, y]
function coords_on_sprite(_x, _y, _angle, _sprite_height, _sprite_width) {
  var xx = random_range(-(_sprite_width / 2), (_sprite_width / 2));
  var yy = random_range(-(_sprite_height / 2), (_sprite_height / 2));
  var dist = point_distance(0, 0, xx, yy);
  var dir = point_direction(0, 0, xx, yy);
  
  return [
    _x + lengthdir_x(dist, _angle + dir), 
    _y + lengthdir_y(dist, _angle + dir)
  ];
}

// Draws the actual debris particles, guided by #generate_debris
function draw_particle_on_sprite(_x, _y, _particle_name, _true_quantity, _angle, _sprite_height, _sprite_width, _particle_system = global.particles_debris) {
  repeat(_true_quantity) {
    var coords = coords_on_sprite(_x, _y, _angle, _sprite_height, _sprite_width);
        
    part_particles_create(
      _particle_system,
      coords[0],
      coords[1],
      _particle_name,
      1
    );
  }
}