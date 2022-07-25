void_persistent = true;
background_layer = noone;

spawning = false;
decaying = false;
decay_timer = -1;

sprite_index = sprite;
scale_factor = random_range(scale_factor_min, scale_factor_max);
image_xscale = scale_factor;
image_yscale = scale_factor;
longest_side = max(sprite_width, sprite_height);

image_angle = random_range(0, 360);
rotation_speed = random(1 / scale_factor) * choose(1, -1);
speed = random(1 / scale_factor);


// Functions

function start_decay_timer(_min = 0, _max = 6 * room_speed) {
  decay_timer = irandom_range(_min, _max);
}