check_if_spawning();
image_angle += rotation_speed;

// Seek the player when nearby for convenience
if (object_exists(obj_player) && (distance_to_object(obj_player) < 100) && (distance_to_object(obj_player) > 1)) {
  var seek_speed = (100 / distance_to_object(obj_player)) / 50
  motion_add(point_direction(x, y, obj_player.x, obj_player.y), seek_speed)
} else if speed < max_speed {
  speed += 0.1
} else if speed > max_speed {
  speed -= 0.1
}