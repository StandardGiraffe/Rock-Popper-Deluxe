// Warning, this is an expensive function, especially at high-resolution/width.
function fov_first_hit(view_angle = 15, range = (sqrt(sqr(room_width) + sqr(room_height))), resolution = 5, observer = self, search_dir = self.image_angle){
  var current_angle = search_dir;
  var angle_flipper = 1;
  
  for (var angle_spread = 0; angle_spread <= (view_angle / 2); angle_spread += (resolution / 2)) {
    current_angle = search_dir + angle_spread * angle_flipper;
    
    for (var current_range = 0; current_range <= range; current_range ++) {
      var xx = observer.x + lengthdir_x(current_range, current_angle);
      var yy = observer.y + lengthdir_y(current_range, current_angle);
      
      if (xx < 0 || yy < 0 || xx > room_width || yy > room_height) { break; }
      
      //draw_line_color(observer.x, observer.y, xx, yy, c_lime, c_lime)
      
      if ((position_empty(xx, yy) == false) && (instance_place(xx, yy, all) != noone) && (!instance_place(xx, yy, obj_base_insubstantial))) {
        return instance_position(xx, yy, all)
      }
    }
    
    angle_flipper *= -1;
  }
  
  return noone;
}