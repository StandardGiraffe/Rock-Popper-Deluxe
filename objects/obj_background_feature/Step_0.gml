// Move
if straight_flying {
  image_angle = direction;
} else {
  image_angle += rotation_speed;
}


// Handle Spawning
if spawning {
  image_alpha += 0.005;
  
  if (image_alpha >= 1) { spawning = false }
}


// Handle Decay
if (decay_timer > -1) {
  decay_timer --;
  
  if (decay_timer < 1) {
    decaying = true;
    spawning = false;
  }
}

if decaying {
  image_alpha -= 0.005;
  
  if (image_alpha <= 0) { instance_destroy(self); }
}


// Cleanup out-of-bounds features
if (x > room_width + longest_side * 2) || (x < 0 - longest_side * 2) || (y > room_height + longest_side * 2) || (y < 0 - longest_side * 2) {
  instance_destroy(self);
}