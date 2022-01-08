event_inherited();

// Attempt to return to starting speed and trajectory after disruptions
approach_target_direction(target_direction, enemy.stabilization_rate);
speed = stabilize_speed(speed, starting_speed, 0.05, 0.05);