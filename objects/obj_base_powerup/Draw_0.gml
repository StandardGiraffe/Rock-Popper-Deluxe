/// @description Fading

// Fade in and out on the final pass
if fading {
  if (fade_direction == "out") {
    image_alpha -= 0.05;
    
    if (image_alpha <= 0.2) {
      fade_direction = "in";
    }
  
  } else {
    image_alpha += 0.05;
    
    if (image_alpha >= 0.8) {
      fade_direction = "out";
    }
  }
  show_debug_message([ image_alpha, fade_direction ] )
}

draw_self();