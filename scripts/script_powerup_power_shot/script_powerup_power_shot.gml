function collect_powerup_power_shot(_x, _y, _collector) {
  _collector.powerups_inventory.bullet_power_shot = true;
}

global.powerup_power_shot = {
  inventory_name: "bullet_power_shot",
  object_name: obj_powerup_power_shot,
  sprite: spr_powerup_power_shot,
  collect_sound: snd_shields_up,
  popup_message: "Power-Shot!",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_power_shot
}