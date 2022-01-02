// Screen-Shake
if (shake_screen) {
  shake_duration_remaining -= 1;
  var x_shake = choose(-shake_magnitude, shake_magnitude);
  var y_shake = choose(-shake_magnitude, shake_magnitude);
  var angle_shake = choose(-angle_shake_magnitude, angle_shake_magnitude);
  
  camera_set_view_pos(view_camera[0], x_shake, y_shake);
  if (angle_shake_magnitude > 0) {
    camera_set_view_angle(view_camera[0], angle_shake);
  }
  
  if (shake_duration_remaining <= 0) {
    shake_magnitude -= shake_fadeout;
    angle_shake_magnitude -= shake_fadeout;
    
    if (shake_magnitude <= 0) {
      camera_set_view_pos(view_camera[0], 0, 0);
      camera_set_view_angle(view_camera[0], 0);
      shake_screen = false;
      shake_magnitude = 0;
      angle_shake_magnitude = 0;
    }
  } 
}