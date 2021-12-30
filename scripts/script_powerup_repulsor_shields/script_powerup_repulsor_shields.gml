function collect_powerup_repulsor_shields(_x, _y, _collector) {
  _collector.powerups_inventory.module_repulsor_shields = true;
  
  if (instance_exists(other)) {
    var p = other;
    
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
