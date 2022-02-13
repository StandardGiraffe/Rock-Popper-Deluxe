function collect_powerup_spread_cannon(_x, _y, _collector) {
  _collector.powerups_inventory.cannon_spread = true;
  
  powerup_drop_other_modules(
    global.powerup_modules_cannons,
    "cannon_spread",
    _collector
  );
}

global.powerup_spread_cannon = {
  inventory_name: "cannon_spread",
  object_name: obj_powerup_spread_cannon,
  sprite: spr_powerup_spread_cannon,
  collect_sound: snd_shields_up,
  popup_message: ":[ Spread-Cannon! ]:",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_spread_cannon
}