function screen_shake(_duration_in_frames = 5, _magnitude_in_pixels = 1, _shake_fadeout = 1000, _shake_screen_angle = false) {
  with (obj_screen_effects) {
    if (_magnitude_in_pixels < shake_magnitude) { return; }
  
    shake_duration_remaining = _duration_in_frames;
    shake_magnitude = _magnitude_in_pixels;
    shake_fadeout = _shake_fadeout;
    
    if (_shake_screen_angle) { angle_shake_magnitude = clamp(shake_magnitude, 1, 3); }
    
    shake_screen = true;
  }
}