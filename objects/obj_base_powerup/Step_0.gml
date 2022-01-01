// Set steering forces
var target_player = instance_nearest(x, y, obj_base_player);

if (target_player && (distance_to_object(target_player) < 100)) {
  // TODO: Upgrade this to `pursue_force` once the player-object has been similarly vectorized.
  steering_force.add(seek_force(target_player.x, target_player.y));
}

// Update vectors
velocity.add(steering_force);
velocity.limit_magnitude(max_speed);
position.add(velocity);

steering_force.set(0, 0);

// Update built-in variables
x = position.x;
y = position.y;
