check_if_spawning();

if (flash_alpha > 0) {
  flash_alpha -= 0.15
}

if (shielded && (current_shields < max_shields)) {
  current_shields += (max_shields / 1800);
  clamp(current_shields, 0, max_shields);
}

image_angle += rotation_speed;