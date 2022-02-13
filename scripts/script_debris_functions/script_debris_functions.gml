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
      
    case "asterdroid":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_asteroid,
        _quantity / 2, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_tiny_hot,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_droid,
        _quantity / 4, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_small_hot,
        _quantity, _angle, _sprite_height, _sprite_width
      );
      break;
      
    case "droid":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_droid,
        _quantity / 2, _angle, _sprite_height, _sprite_width
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
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_droid,
        _quantity / 2, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_powerup_gold_sparkle,
        _quantity, _angle, _sprite_height * 2, _sprite_width * 2
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_powerup_silver_sparkle,
        _quantity, _angle, _sprite_height * 2, _sprite_width * 2
      );
      
      break;
      
    case "platform_core":
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_platform_core,
        _quantity * 2, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_glass_dust_a,
        _quantity * 20, _angle, _sprite_height, _sprite_width
      );
      
      draw_particle_on_sprite(
        _x, _y, global.particle_debris_glass_dust_b,
        _quantity * 20, _angle, _sprite_height, _sprite_width
      );
      
      break;
      
    case "organic":
      break;
    case "crystal":
      break;
    case "fighter":
      break;
  }
}

function draw_shield_pop(object) {
  part_particles_create(
    global.particles,
    object.x,
    object.y,
    global.particle_shield_popping_circle,
    1
  );
  
  draw_particle_on_sprite(
    object.x, object.y, global.particle_shield_popping_sphere,
    object.sprite_height * object.sprite_width * 0.01, object.image_angle, object.sprite_height * 1.15, object.sprite_width * 1.15
  );
  
  draw_particle_on_sprite(
    object.x, object.y, global.particle_impact_shield_circle,
    object.sprite_height * object.sprite_width / 1000, object.image_angle, object.sprite_height * 2, object.sprite_width * 2
  );
}