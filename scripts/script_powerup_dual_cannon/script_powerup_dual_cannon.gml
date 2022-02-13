function collect_powerup_dual_cannon(_x, _y, _collector) {
  _collector.powerups_inventory.cannon_dual = true;
  
  powerup_drop_other_modules(
    global.powerup_modules_cannons,
    "cannon_dual",
    _collector
  );
}

global.powerup_dual_cannon = {
  inventory_name: "cannon_dual",
  object_name: obj_powerup_dual_cannon,
  sprite: spr_powerup_dual_cannon,
  collect_sound: snd_shields_up,
  popup_message: ":[ Dual-Cannon! ]:",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_dual_cannon
}