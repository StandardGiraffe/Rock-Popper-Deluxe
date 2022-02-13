enemy = global.enemy_asteroid_cluster_mega;

event_inherited();

spit_asteroid = false;
alarm_set(0, room_speed * random_range(2, 5));

function be_shoved(_direction, _length, _account_for_mass = false, _afterimage_drawing_time_in_seconds = 0, _afterimage_fade_time_in_seconds = 0.3) { return; }

function eject_fragment(_bullet) {
  if irandom(3) == 0 {
    var selection = irandom(2);
  
    switch selection {
      case 0:
        var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
        ast.points_value = 0;
        spawn_in_complete(ast);
        break;
    
      case 1:
        var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
        ast.points_value = 0;
        spawn_in_complete(ast);
        var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
        ast.points_value = 0;
        spawn_in_complete(ast);
        var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction());
        ast.points_value = 0;
        spawn_in_complete(ast);
        break;
      
      case 2:
        var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
        ast.points_value = 0;
        spawn_in_complete(ast);
        var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
        ast.points_value = 0;
        spawn_in_complete(ast);
        break;
      
      //case 3:
      //  var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, _bullet.get_direction() + random_range(-10, 10));
      //  ast.points_value = 0;
      //  spawn_in_complete(ast);
      //  var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, _bullet.get_direction() + random_range(-10, 10));
      //  ast.points_value = 0;
      //  spawn_in_complete(ast);
      //  var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
      //  ast.points_value = 0;
      //  spawn_in_complete(ast);
      //  break;
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