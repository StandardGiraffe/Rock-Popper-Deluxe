spawn_in(0.5);
fading = false;
seeking = true;

ungettable_timer = 0;

sprite_index = powerup.sprite;
rotation_speed = random_range(-1, 1);

position = new vector(x, y);

steering_force = new vector_zero();

max_speed = random_range(0.5, 1.5);
max_force = 0.1;

velocity = new vector_lengthdir(max_speed, powerup_initial_direction());


// Functions:
set_direction = function(_dir) {
  velocity = new vector_lengthdir(max_speed, _dir);
}

set_fading = function() {
  fading = true;
  fade_direction = "out";
}