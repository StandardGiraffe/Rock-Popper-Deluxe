if fading {
  instance_destroy();
} else {
  set_fading();
  //fading = true;
  //fade_direction = "out";
  
  move_wrap(true, true, 0);
  
  position.x = x;
  position.y = y;
}