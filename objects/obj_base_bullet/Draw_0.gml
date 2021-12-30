if fading {
  image_alpha -= 0.03;
  
  if (image_alpha <= 0.04) {
    instance_destroy();
  }
}

// Draw Trails
draw_projectile_faction_trail(self);
draw_projectile_special_properties_trails(self);

image_angle = velocity.get_direction();

draw_self();