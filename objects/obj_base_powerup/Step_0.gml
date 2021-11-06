// Set steering forces
if (instance_exists(obj_player) && (distance_to_object(obj_player) < 100)) {
  // TODO: Upgrade this to `pursue_force` once the player-object has been similarly vectorized.
  steering_force.add(seek_force(obj_player.x, obj_player.y));
}

// Update vectors
velocity.add(steering_force);
velocity.limit_magnitude(max_speed);
position.add(velocity);

steering_force.set(0, 0);

// Update built-in variables
x = position.x;
y = position.y;

//// Seek the player when nearby for convenience
//if (object_exists(obj_player) && (distance_to_object(obj_player) < 100) && (distance_to_object(obj_player) > 1)) {
//  var seek_speed = (100 / distance_to_object(obj_player)) / 50
//  motion_add(point_direction(x, y, obj_player.x, obj_player.y), seek_speed)
//} else if speed < max_speed {
//  speed += 0.1
//} else if speed > max_speed {
//  speed -= 0.1
//}