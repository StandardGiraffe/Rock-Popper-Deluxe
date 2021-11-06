check_if_spawning();
image_angle += rotation_speed;

// Leave a golden sparkling trail initially, then silver on the final pass.
if (irandom_range(0, 5) == 0) {
  var particle = fading ? global.particle_powerup_silver_sparkle : global.particle_powerup_gold_sparkle;
  
  draw_particle_on_sprite(
    x, y, particle, 1, image_angle, sprite_height, sprite_width, global.particles
  );
}

// Fade in and out on the final pass
if fading {
  if (fade_direction == "out") {
    image_alpha -= 0.05;
    
    if (image_alpha <= 0.2) {
      fade_direction = "in";
    }
  
  } else {
    image_alpha += 0.05;
    
    if (image_alpha >= 0.8) {
      fade_direction = "out";
    }
  }
  show_debug_message([ image_alpha, fade_direction ] )
}

draw_self();