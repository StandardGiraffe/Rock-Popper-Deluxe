function collect_powerup_turning_up() {
  global.powerups_inventory.engine_turning_up = true;
}

global.powerup_turning_up = {
  inventory_name: "engine_turning_up",
  object_name: obj_powerup_turning_up,
  sprite: spr_powerup_turning_up,
  collect_sound: snd_shields_up,
  popup_message: "Turning Up!",
  popup_colours: [ c_orange, c_orange, c_yellow, c_yellow ],
  collect_function: collect_powerup_turning_up
}