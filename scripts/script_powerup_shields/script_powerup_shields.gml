function collect_powerup_shields(x, y) {
  if (instance_exists(obj_player)) {
    var p = obj_player;
    
    if (!p.shielded) {
      p.shielded = (true);
      p.current_shields = p.max_shields / 2;
    
      display_popup(
        "Shields Repaired!",
        x, y,
        undefined,
        [ c_aqua, c_aqua, c_blue, c_blue ]
      );
    
    } else if (p.current_shields < p.max_shields) {
      p.current_shields = p.max_shields;
    
      display_popup(
        "Shields Recharged!",
        x, y,
        undefined,
        [ c_aqua, c_aqua, c_blue, c_blue ]
      );
    
    } else {
      p.max_shields *= 1.15;
      p.current_shields = p.max_shields;
    
      display_popup(
        "Shields Upgraded!",
        x, y,
        undefined,
        [ c_aqua, c_aqua, c_silver, c_silver]
      );
    }    
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
