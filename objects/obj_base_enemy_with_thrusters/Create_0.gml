event_inherited();

// Start wobble
wobble_range = enemy.wobble_range;
wobble_frequency = enemy.wobble_frequency;
alarm_set(11, room_speed * random(wobble_frequency) + 1);

// Capture initial speed and direction for later correction
target_speed = starting_speed;
target_direction = direction;