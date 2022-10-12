function get_distance(_target, _trajectory, _entry_point_x, _entry_point_y) {
  _trajectory += 180;
  
  // In cases with glancing blows, it's possible that the slightly-randomized angle of incidence will be outside of the target.  In that case, the ejecta should appear directly at the shot.
  if !collision_line(x, y, _entry_point_x, _entry_point_y, _target, true, false) {
    return point_distance(x, y, _entry_point_x, _entry_point_y);
  }
  
  var pointer_x = x;
  var pointer_y = y;

  while !collision_point(pointer_x, pointer_y, _target, true, true) {
    pointer_x = pointer_x + lengthdir_x(1, _trajectory);
    pointer_y = pointer_y + lengthdir_y(1, _trajectory);
  }
  
  return point_distance(x, y, pointer_x, pointer_y);
}
