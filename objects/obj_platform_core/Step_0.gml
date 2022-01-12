event_inherited();

if (distance_to_object(obj_base_player) < 400) {
  if (shielded) {
    direction = point_direction(x, y, obj_base_player.x, obj_base_player.y);
  } else {
    direction = point_direction(obj_base_player.x, obj_base_player.y, x, y);
  }  
}
