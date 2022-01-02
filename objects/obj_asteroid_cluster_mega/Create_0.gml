enemy = global.enemy_asteroid_cluster_mega;

event_inherited();

spit_asteroid = false;
alarm_set(0, room_speed * random_range(2, 5));

function be_shoved(_direction, _length, _account_for_mass = false, _show_shadow_trail = false) { return; }

function eject_fragment(_bullet) {
  if irandom(3) == 0 {
  var selection = irandom(3);
  
  switch selection {
    case 0:
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      break;
    
    case 1:
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction());
      ast.points_value = 0;
      break;
      
    case 2:
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      break;
      
    case 3:
      var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, _bullet.get_direction() + random_range(-10, 10));
      ast.points_value = 0;
      break;
  }
}
}