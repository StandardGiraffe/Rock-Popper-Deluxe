last_colour = c_black;
target_colour = noone;
colour_fade_counter_start = 0;
colour_fade_counter = 0;

last_alpha = 0.75;
target_alpha = noone;
alpha_fade_counter_start = 0;
alpha_fade_counter = 0;

flash_colour = c_white;
flash_alpha = 0;
flash_fade_counter_start = 0;
flash_fade_counter = 0;

current_colour = last_colour;
current_alpha = last_alpha;

function change_colour(_new_colour, _fade_time = -1) {
  if _fade_time = -1 {
    current_colour = _new_colour;
    target_colour = noone;
    return;
  }
  
  last_colour = current_colour;
  target_colour = _new_colour;
  colour_fade_counter_start = max(_fade_time, 1);
  colour_fade_counter = colour_fade_counter_start;
}

function change_alpha(_new_alpha, _fade_time = -1) {
  if _fade_time = -1 {
    current_alpha = _new_alpha;
    target_alpha = noone;
    return;
  }
  
  last_alpha = current_alpha;
  target_alpha = _new_alpha;
  alpha_fade_counter_start = max(_fade_time, 1);
  alpha_fade_counter = alpha_fade_counter_start;
}