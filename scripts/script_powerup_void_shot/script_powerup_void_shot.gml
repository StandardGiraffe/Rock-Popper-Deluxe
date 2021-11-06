function collect_powerup_void_shot() {
  global.powerups_inventory.bullet_void_shot = true;
}

global.powerup_void_shot = {
  inventory_name: "bullet_void_shot",
  object_name: obj_powerup_void_shot,
  sprite: spr_powerup_void_shot,
  collect_sound: snd_shields_up,
  popup_message: "Void-Shot!",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_void_shot
}