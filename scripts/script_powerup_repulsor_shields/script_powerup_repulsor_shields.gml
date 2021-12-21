function collect_powerup_repulsor_shields(x, y) {
  global.powerups_inventory.module_repulsor_shields = true;
  
  if (instance_exists(obj_player)) {
    var p = obj_player;
    
    if (!p.shielded) {
      p.shielded = (true);
      p.current_shields = 1;
    }
  }
}

global.powerup_repulsor_shields = {
  inventory_name: "module_repulsor_shields",
  object_name: obj_powerup_repulsor_shields,
  sprite: spr_powerup_repulsor_shields,
  collect_sound: snd_shields_up,
  popup_message: "Repulsor Shields!",
  popup_colours: [ c_aqua, c_aqua, c_silver, c_silver],
  collect_function: collect_powerup_repulsor_shields
}
