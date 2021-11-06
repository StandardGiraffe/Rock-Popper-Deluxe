function add_recoil(_bullet_speed, _bullet_power){
  var recoil_factor = -1 * ((_bullet_speed / 16) + (_bullet_power / 2));
  
  motion_add(image_angle, recoil_factor);
  speed = min(speed, _bullet_speed);  // Clamp recoiled reverse speed to bullet speed.
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
  var speed_max_bonus = global.powerups_inventory.engine_thrust_up ? 1 : 0;

  if reverse {
    motion_add(image_angle, -(global.stats.forward_acc + acc_bonus))
    if (speed > (global.stats.forward_speed_max + speed_max_bonus)) {
    	speed = global.stats.forward_speed_max + speed_max_bonus;
    }
  } else {
    motion_add(image_angle, global.stats.forward_acc + acc_bonus)
    if (speed > (global.stats.forward_speed_max + speed_max_bonus)) {
    	speed = global.stats.forward_speed_max + speed_max_bonus;
    }
  }
}