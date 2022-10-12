enemy = global.enemy_asteroid_cluster_mega;

event_inherited();

spit_asteroid = false;
alarm_set(0, room_speed * random_range(2, 5));

function be_shoved(_direction, _length, _account_for_mass = false, _afterimage_drawing_time_in_seconds = 0, _afterimage_fade_time_in_seconds = 0.3) { return; }

function get_exit_point(_entry_point_x, _entry_point_y, _angle_of_incidence) {
  var safe_length = (sprite_width + sprite_height);
  
  // Find a point safely outside the sprite along the angle of incidence
  var safe_exit_x = _entry_point_x + lengthdir_x(safe_length, _angle_of_incidence);
  var safe_exit_y = _entry_point_y + lengthdir_y(safe_length, _angle_of_incidence);
  var safe_line_end = instance_create_layer(safe_exit_x, safe_exit_y, "Invisibles", obj_shock_line_end);
  
  var traversal_length = safe_length - safe_line_end.get_distance(self, _angle_of_incidence, _entry_point_x, _entry_point_y);
  
  return [
    _entry_point_x + lengthdir_x(traversal_length, _angle_of_incidence),
    _entry_point_y + lengthdir_y(traversal_length, _angle_of_incidence),
  ]
}

function draw_shock_effect(_entry_point_x, _entry_point_y, _exit_point_x, _exit_point_y) {
  instance_create_layer(0, 0, "Overlays", obj_shock_line, {
    x1: _entry_point_x,
    y1: _entry_point_y,
    x2: _exit_point_x,
    y2: _exit_point_y
  });
  
  repeat(irandom_range(3, 6)) {
    part_particles_create(
      global.particles,
      _exit_point_x + irandom_range(-20, 20), _exit_point_y + irandom_range(-20, 20),
      choose(global.particle_debris_asteroid_cluster_ejecta_a, global.particle_debris_asteroid_cluster_ejecta_b),
      1
    )
  };
}

// Serves the eject_random_fragment() function.
function eject_fragment(_bullet, _ejecta) {
  var trajectory = _bullet.get_direction() + random_range(-10, 10);
  var exit_point = get_exit_point(_bullet.x, _bullet.y, trajectory);
  draw_shock_effect(_bullet.x, _bullet.y, exit_point[0], exit_point[1]);
  
  var ast = spawn_entity(
    exit_point[0], exit_point[1],
    _ejecta, undefined, trajectory
  );
  ast.points_value = 0;
  spawn_in_complete(ast);
}

function eject_random_fragment(_bullet) {
  if irandom(3) == 0 {
    var selection = irandom(2);
  
    switch selection {
      case 0:
        eject_fragment(_bullet, obj_asteroid_gravel_large);
        break;
    
      case 1:
        eject_fragment(_bullet, obj_asteroid_gravel);
        eject_fragment(_bullet, obj_asteroid_gravel);
        eject_fragment(_bullet, obj_asteroid_gravel_large);
        break;
      
      case 2:
        eject_fragment(_bullet, obj_asteroid_gravel_large);
        eject_fragment(_bullet, obj_asteroid_gravel_large);
        break;
    }
  }
}

function on_body_damage_increased() {
  spawn_formation_starburst(
    obj_asteroid_gravel, x, y, undefined, irandom_range(4, 8)
  )
  
  spawn_formation_starburst(
    obj_asteroid_gravel_large, x, y, undefined, irandom_range(4, 8)
  )
}