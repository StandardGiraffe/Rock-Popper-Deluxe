// Update Current Colour
if (colour_fade_counter == 0) {
  //target_colour = noone;
}

if target_colour {
  current_colour = merge_color(
    target_colour, last_colour,
    (colour_fade_counter / colour_fade_counter_start)
  );
} else {
  //last_colour = current_colour;
}


// Update Current Alpha
if (alpha_fade_counter == 0) {
  //target_alpha = noone;
}

if target_alpha {
  current_alpha = map_to_range(
    alpha_fade_counter, 0, alpha_fade_counter_start,
    target_alpha, last_alpha
  );
} else {
  //last_alpha = current_alpha;
}

// Decrement Counters
colour_fade_counter = max(0, colour_fade_counter - 1);
alpha_fade_counter = max(0, alpha_fade_counter - 1);
flash_fade_counter = max(0, flash_fade_counter - 1);