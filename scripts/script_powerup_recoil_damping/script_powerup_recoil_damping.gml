function collect_powerup_recoil_damping(_x, _y, _collector) {
  _collector.powerups_inventory.engine_recoil_damping = true;
}

global.powerup_recoil_damping = {
  inventory_name: "engine_recoil_damping",
  object_name: obj_powerup_recoil_damping,
  sprite: spr_powerup_recoil_damping,
  collect_sound: snd_shields_up,
  popup_message: "Recoil Damping!",
  popup_colours: [ c_orange, c_orange, c_yellow, c_yellow ],
  collect_function: collect_powerup_recoil_damping
}