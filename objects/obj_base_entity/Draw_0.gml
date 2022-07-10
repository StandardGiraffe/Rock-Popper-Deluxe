draw_self();

// Shield Glow
if (shielded) {
  gpu_set_blendmode(bm_add);
  shader_set(sh_flash);
  
  shield_glow_progress += (1 / room_speed);
  if (shield_glow_progress > 1) { shield_glow_progress = 0 };
  
  var glow_magnitude = animcurve_channel_evaluate(
    animcurve_get_channel(ac_shield_pulse, "curve"),
    shield_glow_progress
  );
  
  var shield_scale = map_to_range(
     current_shield_percentage(), 0, 100,
     shield_glow_radius, shield_glow_radius * 1.25
  )
  
  draw_sprite_ext(
    sprite_index, image_index,
    x, y,
    shield_scale, shield_scale,
    image_angle,
    c_blue, map_to_range(
      glow_magnitude,
      2, 1,
      .15, .35
    ) * image_alpha
  )
  
  shader_reset();
  gpu_set_blendmode(bm_normal);
}

// Damage Flash
if (flash_alpha > 0) {
  shader_set(sh_flash);
  draw_sprite_ext(
    sprite_index,
    image_index,
    x, y,
    image_xscale,
    image_yscale,
    image_angle,
    flash_colour,
    flash_alpha
  );
  
  shader_reset();
}

// Afterimage
if (afterimage_drawing_time >= 0) {
  draw_afterimage(self, x, y, afterimage_lifespan / room_speed);
  afterimage_drawing_time --;
}
