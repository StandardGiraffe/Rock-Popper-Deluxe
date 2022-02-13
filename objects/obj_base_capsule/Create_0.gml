event_inherited();

function damage_body(damage_taken, _shooter) {
  be_killed(_shooter);
}

function be_killed(_killer) {
  killer = _killer;
  
  var dropped_powerup = spawn_powerup(
    get_random_powerup(powerup_collection, false, _killer),
    x, y
  );

  dropped_powerup.velocity = new vector_lengthdir(speed, direction);
  dropped_powerup.rotation_speed = rotation_speed;

  instance_destroy();
}