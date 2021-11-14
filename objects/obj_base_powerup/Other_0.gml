if fading {
  instance_destroy();
} else {
  set_fading();
  
  move_wrap(true, true, 0);
  
  position.x = x;
  position.y = y;
}