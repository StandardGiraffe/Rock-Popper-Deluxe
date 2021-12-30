function collect_powerup_dual_shot(_x, _y, _collector) {
  _collector.powerups_inventory.bullet_dual_shot = true;
}

global.powerup_dual_shot = {
  inventory_name: "bullet_dual_shot",
  object_name: obj_powerup_dual_shot,
  sprite: spr_powerup_dual_shot,
  collect_sound: snd_shields_up,
  popup_message: "Dual-Shot!",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_dual_shot
}