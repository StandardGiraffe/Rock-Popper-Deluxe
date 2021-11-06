event_inherited();

var dropped_powerup = spawn_powerup(
  get_random_powerup(global.powerup_collection_weapons, false),
  x, y
);

dropped_powerup.speed = (speed / 2);
dropped_powerup.set_direction = direction;
dropped_powerup.rotation_speed = rotation_speed;