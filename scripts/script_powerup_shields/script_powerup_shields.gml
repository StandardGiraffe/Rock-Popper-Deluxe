function collect_powerup_shields() {
  global.stats.shielded = true;
}

global.powerup_shields = {
  inventory_name: "module_shields",
  object_name: obj_powerup_shields,
  sprite: spr_powerup_shields,
  collect_sound: snd_shields_up,
  popup_message: "Shields Up!",
  popup_colours: [ c_aqua, c_aqua, c_blue, c_blue ],
  collect_function: collect_powerup_shields
}
