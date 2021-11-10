if void_persistent && !fading {
  move_wrap(true, true, 0);
  fading = true;
  
  position.x = x;
  position.y = y;
} else {
  instance_destroy();  
}