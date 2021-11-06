function collect_powerup_extra_life() {
  global.stats.lives += 1;
}

global.powerup_extra_life = {
  inventory_name: "module_extra_life",
  object_name: obj_powerup_extra_life,
  sprite: spr_powerup_extra_life,
  collect_sound: snd_extra_life,
  popup_message: "Extra Life!",
  popup_colours: [ c_yellow, c_yellow, c_white, c_white ],
  collect_function: collect_powerup_extra_life
}