if void_persistent && !fading {
  move_wrap(true, true, 0);
  fading = true;
} else {
  instance_destroy();  
}