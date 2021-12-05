spawn_in();
flash_alpha = 0;
flash_colour = c_white;

rotation_speed = get_random_value(enemy.rotation_speed);

max_hitpoints = get_random_value(enemy.max_hitpoints);
current_hitpoints = max_hitpoints;

shielded = enemy.max_shields > 0;
if (shielded) {
  max_shields = enemy.max_shields;
  current_shields = max_shields;
}

points_value = max_hitpoints * enemy.score_multiplier;

direction = get_random_value(enemy.initial_direction);

starting_speed = get_random_value(enemy.movement_speed);
speed = starting_speed;

void_persistent = true;