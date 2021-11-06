check_if_spawning();
image_angle += rotation_speed;

// Leave a golden sparkling trail initially, then silver on the final pass.
if (irandom_range(0, 5) == 0) {
  var particle = fading ? global.particle_powerup_silver_sparkle : global.particle_powerup_gold_sparkle;
  
  draw_particle_on_sprite(
    x, y, particle, 1, image_angle, sprite_height, sprite_width, global.particles
  );
}

// Seek the player when nearby for convenience
if (object_exists(obj_player) && (distance_to_object(obj_player) < 100) && (distance_to_object(obj_player) > 1)) {
  var seek_speed = (100 / distance_to_object(obj_player)) / 50
  motion_add(point_direction(x, y, obj_player.x, obj_player.y), seek_speed)
} else if speed < max_speed {
  speed += 0.1
} else if speed > max_speed {
  speed -= 0.1
}