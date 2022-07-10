function fov_first_hit(view_angle = 15, range = (sqrt(sqr(room_width) + sqr(room_height))), resolution = 5, observer = self, search_dir = self.image_angle) {
  var closest_candidate = noone;
  for (var angle_spread = -(view_angle / 2); angle_spread <= (view_angle / 2); angle_spread += (view_angle / resolution)) {
    var current_angle = search_dir + angle_spread;
    var current_line = ds_list_create();
    ds_list_clear(current_line);
    
    var instances_found = collision_line_list(
      observer.x, observer.y,
      observer.x + lengthdir_x(range, current_angle), observer.y + lengthdir_y(range, current_angle),
      obj_base_entity, false, true,
      current_line, true
    );
    
    if instances_found > 0 {
      var candidate = current_line[| 0];
      
      if (candidate != obj_base_insubstantial) && (candidate.faction != factions.neutrals) && (candidate.faction != observer.faction) {
        if closest_candidate {
          if candidate.distance_to_object(observer) < closest_candidate.distance_to_object(observer) {
            closest_candidate = candidate;
          }
        } else {
          closest_candidate = candidate;
        }
      }
    }
    
    ds_list_destroy(current_line);
  }
  
  return closest_candidate;
}

// (Replaced with a superior version.)  Warning, this is an expensive function, especially at high-resolution/width.
function fov_first_hit_bak(view_angle = 15, range = (sqrt(sqr(room_width) + sqr(room_height))), resolution = 5, observer = self, search_dir = self.image_angle){
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