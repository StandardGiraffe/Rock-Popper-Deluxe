function collect_powerup_thrust_up() {
  global.powerups_inventory.engine_thrust_up = true;
}

global.powerup_thrust_up = {
  inventory_name: "engine_thrust_up",
  object_name: obj_powerup_thrust_up,
  sprite: spr_powerup_thrust_up,
  collect_sound: snd_shields_up,
  popup_message: "Thrust Up!",
  popup_colours: [ c_orange, c_orange, c_yellow, c_yellow ],
  collect_function: collect_powerup_thrust_up
}