function collect_powerup_speed_shot() {
  global.powerups_inventory.bullet_speed_shot = true;
}

global.powerup_speed_shot = {
  inventory_name: "bullet_speed_shot",
  object_name: obj_powerup_speed_shot,
  sprite: spr_powerup_speed_shot,
  collect_sound: snd_shields_up,
  popup_message: "Speed-Shot!",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_speed_shot
}