if (!spawning && !other.spawning && (other.faction != faction)) {
  var my_shove_direction = point_direction(other.x, other.y, x, y);
  var others_shove_direction = point_direction(x, y, other.x, other.y);
  var my_shove_magnitude = clamp(((other.speed * other.mass) - (speed * mass)) / 75, 1.5, 5);
  var others_shove_magnitude = clamp(((speed * mass) - (other.speed * other.mass)) / 75, 1.5, 5);
  show_debug_message([ my_shove_magnitude, others_shove_magnitude ])

  be_shoved(my_shove_direction, my_shove_magnitude);
  other.be_shoved(others_shove_direction, others_shove_magnitude); 
  screen_shake(10, 2, 0.1, true);
  
  simultaneous_impacts(other, self);
}