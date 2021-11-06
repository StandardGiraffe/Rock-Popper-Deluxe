event_inherited();



if irandom(3) == 0 {
  var selection = irandom(3);
  
  switch selection {
    case 0:
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      break;
    
    case 1:
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, other.direction);
      ast.points_value = 0;
      break;
      
    case 2:
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel_large, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      break;
      
    case 3:
      var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_splitter_medium_fragment, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      var ast = spawn_entity(x, y, obj_asteroid_gravel, undefined, other.direction + random_range(-10, 10));
      ast.points_value = 0;
      break;
  }
}