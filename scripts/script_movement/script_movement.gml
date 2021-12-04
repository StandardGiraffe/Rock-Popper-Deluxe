function add_recoil(_bullet_speed, _bullet_power){
  var recoil_factor = -1 * ((_bullet_speed / 16) + (_bullet_power / 2));
  
  motion_add(image_angle, recoil_factor);
  speed = min(speed, _bullet_speed * 1.5);  // Clamp recoiled reverse speed to bullet speed.
}

function turn_player(direction) {
  var turn_bonus = (global.powerups_inventory.engine_turning_up ? 1 : 0) + (global.powerups_inventory.engine_thrust_up ? 0.5 : 0);
  
	if (direction == "left") {
		image_angle += (global.stats.turn_rate + turn_bonus);
	} else {
		image_angle -= (global.stats.turn_rate + turn_bonus);
	}
}

function thrust_player(reverse = false) {
  var acc_bonus = global.powerups_inventory.engine_thrust_up ? 0.05 : 0;
  var calculated_thrust_max = global.stats.forward_acc + acc_bonus;
  
  var speed_max_bonus = global.powerups_inventory.engine_thrust_up ? 1 : 0;
  var calculated_speed_max = global.stats.forward_speed_max + speed_max_bonus;
  
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

  // Old thruster system
  //if reverse {
  //  motion_add(image_angle, -(global.stats.forward_acc + acc_bonus))
  //  if (speed > (global.stats.forward_speed_max + speed_max_bonus)) {
  //  	speed = global.stats.forward_speed_max + speed_max_bonus;
  //  }
  //} else {
  //  motion_add(image_angle, global.stats.forward_acc + acc_bonus)
  //  if (speed > (global.stats.forward_speed_max + speed_max_bonus)) {
  //  	speed = global.stats.forward_speed_max + speed_max_bonus;
  //  }
  //}
}