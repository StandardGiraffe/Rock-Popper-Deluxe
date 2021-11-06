event_inherited();

// On death, you get a capsule!
var e = spawn_entity(
  x, y,
  choose(
    obj_powerup_capsule_engine,
    obj_powerup_capsule_shields,
    obj_powerup_capsule_weapon
  ),
  speed + random_range(-1, 1),
  direction + random_range(-5, 5),
  rotation_speed + random_range(-1, 1)
)
e.spawning = false;
