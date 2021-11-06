if fading {
  instance_destroy();
} else {
  fading = true;
  fade_direction = "out";
  move_wrap(true, true, 0);
}