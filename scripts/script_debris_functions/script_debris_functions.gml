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
function draw_debris(_x, _y, _particle_name, _true_quantity, _angle, _sprite_height, _sprite_width) {
  repeat(_true_quantity) {
    var coords = coords_on_sprite(_x, _y, _angle, _sprite_height, _sprite_width);
        
    part_particles_create(
      global.particles_debris,
      coords[0],
      coords[1],
      _particle_name,
      1
    );
  }
}

// Based on the type of enemy, creates a particular debris pattern/quantity
function generate_debris(_x, _y, _enemy_type, _quantity, _angle, _sprite_height, _sprite_width) {
  switch _enemy_type {
    case "asteroid":
      draw_debris(
        _x, _y, global.particle_debris_asteroid,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "asteroid_mini":
      draw_debris(
        _x, _y, global.particle_debris_asteroid,
        _quantity / 10, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "droid":
      draw_debris(
        _x, _y, global.particle_debris_droid,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 10, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_small_hot,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "droid_mini":
      draw_debris(
        _x, _y, global.particle_debris_droid,
        _quantity / 5, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      draw_debris(
        _x, _y, global.particle_debris_small_hot,
        _quantity / 2, _angle, _sprite_height, _sprite_width
      );
      
      break;
    case "capsule":
      break;
    case "organic":
      break;
    case "crystal":
      break;
    case "fighter":
      break;
  }
}
