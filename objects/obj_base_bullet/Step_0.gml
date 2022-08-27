// Prepare Bullet Movement:
if (seeking_shot) {
  if (permanent_target) {
  var current_speed = get_current_speed();
    velocity.add(pursue_force_for_non_steering(permanent_target, 5, current_speed, 0.025 * abs(current_speed)));
    //velocity.add(pursue_force_for_non_steering(target, target.speed, current_speed, 10));

    velocity.limit_magnitude(current_speed)
  } else if (target) {
    if (fov_first_hit(30, , 10) == target) {
      var current_speed = get_current_speed();
      velocity.add(pursue_force_for_non_steering(target, 5, current_speed, 0.1 * abs(current_speed)));
      //velocity.add(pursue_force_for_non_steering(target, target.speed, current_speed, 10));

      velocity.limit_magnitude(current_speed)
    } else {
      target = noone;
    }
    
  } else {
    var target_candidate = fov_first_hit();
    if (instance_exists(target_candidate) && target_candidate.faction) && (target_candidate.faction != shooter.faction) && (target_candidate.faction != factions.neutrals) {
      target = target_candidate;
    }
  }
}

// Update vectors
velocity.add(steering_force);
//velocity.limit_magnitude(base_speed);
position.add(velocity);

steering_force.set(0, 0);

// Update built-in variables
x = position.x;
y = position.y;

// Other Operations
lifespan --;
if lifespan <= 0 {
  fading = true;
}