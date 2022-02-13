enemy = global.enemy_powerup_capsule_shields;
powerup_collection = global.powerup_collection_shields;

event_inherited();

// Shield Capsules should be guaranteed to drop shield powerups if the killer's shields are down.
function be_killed(_killer) {
  killer = _killer;
  
  var dropped_powerup;
  
  if (_killer.max_shields > 0 && !_killer.shielded) {
    dropped_powerup = instance_create_layer(x, y, "Entities", obj_powerup_shields);
  } else {
    dropped_powerup = spawn_powerup(
      get_random_powerup(powerup_collection, false, _killer),
      x, y
    );
  }

  dropped_powerup.velocity = new vector_lengthdir(speed, direction);
  dropped_powerup.rotation_speed = rotation_speed;

  instance_destroy();
}