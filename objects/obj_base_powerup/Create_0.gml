spawn_in(0.5);
fading = false;

sprite_index = powerup.sprite;
rotation_speed = random_range(-1, 1);
max_speed = random_range(0.5, 1.5);
speed = max_speed;
direction = powerup_initial_direction();