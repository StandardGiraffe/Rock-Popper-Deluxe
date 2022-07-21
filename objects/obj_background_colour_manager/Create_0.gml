function change_background_colour(_new_colour, _fade_time = -1) {
  with obj_background_colour_layer {
    change_colour(_new_colour, _fade_time);
  }
}

function change_background_alpha(_new_alpha, _fade_time = -1) {
  with obj_background_colour_layer {
    change_alpha(_new_alpha, _fade_time);
  }
}