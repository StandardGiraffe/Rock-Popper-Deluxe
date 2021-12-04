function collect_powerup_shields(x, y) {
  if (!global.stats.shielded) {
    global.stats.shielded = true;
    global.stats.current_shields = global.stats.max_shields / 2;
    
    display_popup(
      "Shields Repaired!",
      x, y,
      undefined,
      [ c_aqua, c_aqua, c_blue, c_blue ]
    );
    
  } else if (global.stats.current_shields < global.stats.max_shields) {
    global.stats.current_shields = global.stats.max_shields
    
    display_popup(
      "Shields Recharged!",
      x, y,
      undefined,
      [ c_aqua, c_aqua, c_blue, c_blue ]
    );
    
  } else {
    global.stats.max_shields *= 1.5;
    global.stats.current_shields = global.stats.max_shields;
    
    display_popup(
      "Shields Upgraded!",
      x, y,
      undefined,
      [ c_aqua, c_aqua, c_silver, c_silver]
    );
  }
}

global.powerup_shields = {
  inventory_name: "module_shields",
  object_name: obj_powerup_shields,
  sprite: spr_powerup_shields,
  collect_sound: snd_shields_up,
  popup_message: undefined,
  popup_colours: [ c_aqua, c_aqua, c_blue, c_blue ],
  collect_function: collect_powerup_shields
}
