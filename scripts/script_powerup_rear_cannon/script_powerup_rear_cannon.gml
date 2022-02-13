function collect_powerup_rear_cannon(_x, _y, _collector) {
  _collector.powerups_inventory.cannon_rear = true;
  
  powerup_drop_other_modules(
    global.powerup_modules_cannons,
    "cannon_rear",
    _collector
  );
}

global.powerup_rear_cannon = {
  inventory_name: "cannon_rear",
  object_name: obj_powerup_rear_cannon,
  sprite: spr_powerup_rear_cannon,
  collect_sound: snd_shields_up,
  popup_message: ":[ Rear-Cannon! ]:",
  popup_colours: [ c_red, c_red, c_orange, c_orange ],
  collect_function: collect_powerup_rear_cannon
}