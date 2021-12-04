global.powerup_collection = {
  bullet_dual_shot: obj_powerup_dual_shot,
  bullet_power_shot: obj_powerup_power_shot,
  bullet_speed_shot: obj_powerup_speed_shot,
  bullet_void_shot: obj_powerup_void_shot,
  engine_thrust_up: obj_powerup_thrust_up,
  engine_turning_up: obj_powerup_turning_up,
  module_shields: obj_powerup_shields,
  module_extra_life: obj_powerup_extra_life
}

global.powerup_collection_weapons = {
  bullet_dual_shot: obj_powerup_dual_shot,
  bullet_power_shot: obj_powerup_power_shot,
  bullet_speed_shot: obj_powerup_speed_shot,
  bullet_void_shot: obj_powerup_void_shot
}

global.powerup_collection_engines = {
  engine_thrust_up: obj_powerup_thrust_up,
  engine_turning_up: obj_powerup_turning_up
}

global.powerup_collection_modules = {
  module_extra_life: obj_powerup_extra_life
}

global.powerup_collection_shields = {
  module_points: obj_powerup_points,
  module_shields: obj_powerup_shields
}

/// Returns a powerup object name based on certain criteria
function get_random_powerup(collection = global.powerup_collection, shields_available = true ){
  // Always return a shield powerup if shields are down and shields are available
  if (shields_available && (!global.stats.shielded || global.stats.current_shields < global.stats.max_shields)) {
    return obj_powerup_shields
    
  // Otherwise, select randomly from the available powerups...
  } else {
    var selection = array_sample(variable_struct_get_names(collection));
    
    // And if the player already has that powerup, substitute points.
    if (global.powerups_inventory[$ selection]) {
      return obj_powerup_points;
    } else {
      return collection[$ selection];
    }
  }
}