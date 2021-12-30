function EmptyPowerupsInventory() constructor {
  bullet_power_shot = false;
  bullet_speed_shot = false;
  bullet_dual_shot = false;
  bullet_void_shot = false;
  bullet_ram_shot = false;
  bullet_unspin_shot = false;
  bullet_brake_shot = false;
  engine_turning_up = false;
  engine_thrust_up = false;
  engine_recoil_damping = false;
  module_inertial_braking = false;
  module_powerup_magnet = false;
  module_repulsor_shields = false;
  module_torpedo = false;
}

function powerup_drop_inventory(_x, _y, _powerups_inventory) {
  var powerups = variable_struct_get_names(_powerups_inventory);
  for (var i = array_length(powerups) - 1; i >= 0; --i) {
      var powerup = powerups[i];
      
      if _powerups_inventory[$ powerup] {
        var dropped_powerup = spawn_powerup(global.powerup_collection[$ powerup], _x + random_range(-50, 50), _y + random_range(-50, 50));
        dropped_powerup.set_direction(random(360));
        dropped_powerup.set_fading();
        _powerups_inventory[$ powerup] = false;
      }
  }
}

function spawn_powerup(_powerup_obj, _x, _y) {
  return instance_create_layer(
    _x, _y,
    "Entities",
    _powerup_obj
  )
}