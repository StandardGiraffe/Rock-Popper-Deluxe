// Based on the type of enemy, creates a particular debris pattern/quantity
function generate_debris(_x, _y, _enemy_type, _quantity, _angle, _sprite_height, _sprite_width) {
  switch _enemy_type {
    case "asteroid":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_asteroid,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "asteroid_mini":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_asteroid,
        _quantity / 10, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "droid":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_droid,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 10, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_small_hot,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "droid_mini":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_droid,
        _quantity / 5, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity * 5, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
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