// Setup Movement:
position = new vector(x, y);
steering_force = new vector_zero();
max_speed = projectile.base_speed;
max_force = 0.1;

velocity = new vector_zero();

// Setup Stats:
shot_power = projectile.base_power;
shot_power_vs_shields = shot_power * projectile.shield_damage_multiplier;
void_persistent = false;
fading = false;

// Functions:
set_direction = function(_dir) {
  velocity = new vector_lengthdir(max_speed, _dir);
}

get_direction = function() {
  return velocity.get_direction();
}
