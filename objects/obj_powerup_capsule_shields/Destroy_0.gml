event_inherited();

var dropped_powerup = spawn_powerup(
  get_random_powerup(global.powerup_collection_shields),
  x, y
);

dropped_powerup.velocity = new vector_lengthdir(speed, direction);
dropped_powerup.rotation_speed = rotation_speed;