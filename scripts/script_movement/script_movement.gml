function add_recoil(_bullet_speed, _bullet_power){
  var recoil_factor = -1 * ((_bullet_speed / 16) + (_bullet_power / 2));
  
  if (powerups_inventory.engine_recoil_damping) {
    recoil_factor *= 0.25;
  }
  
  motion_add(image_angle, recoil_factor);
  speed = min(speed, _bullet_speed * 1.5);  // Clamp recoiled reverse speed to bullet speed.
}

function turn_player(direction) {
  var turn_bonus = (powerups_inventory.engine_turning_up ? 1 : 0) + (powerups_inventory.engine_thrust_up ? 0.5 : 0);
  var grapple_penalty = 1;
  
  if (grappled) {
    grapple_penalty = 0.15;
    screen_shake(2, 1);
  }
  
	if (direction == "left") {
		image_angle += (stats.turn_rate + turn_bonus) * grapple_penalty;
	} else {
		image_angle -= (stats.turn_rate + turn_bonus) * grapple_penalty;
	}
}

function thrust_player(reverse = false) {
  var acc_bonus = powerups_inventory.engine_thrust_up ? 0.05 : 0;
  var grapple_penalty = grappled ? 0.5 : 1;
  var calculated_thrust_max = (stats.forward_acc + acc_bonus) * grapple_penalty;
  
  var speed_max_bonus = powerups_inventory.engine_thrust_up ? 1 : 0;
  var calculated_speed_max = (stats.forward_speed_max + speed_max_bonus) * grapple_penalty;
  
  var thrust_angle = image_angle
  if (reverse) { calculated_thrust_max *= -1; }

  var current_motion = new vector_lengthdir(speed, direction);
  var thrust_motion = new vector_lengthdir(calculated_thrust_max, thrust_angle);
  
  var combined_motion = vector_add(current_motion, thrust_motion);
  
  var new_speed;
  var new_direction = combined_motion.get_direction();
  
  if (combined_motion.get_magnitude() >= calculated_speed_max) {
    new_speed = min(combined_motion.get_magnitude(), current_motion.get_magnitude());
  } else {
    new_speed = min(combined_motion.get_magnitude(), calculated_speed_max);
  }

  motion_set(new_direction, new_speed);
}