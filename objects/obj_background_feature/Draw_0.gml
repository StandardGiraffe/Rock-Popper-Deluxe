draw_self();

if (shadow_alpha > 0) {
  shader_set(sh_flash);
  draw_sprite_ext(
    sprite_index,
    image_index,
    x, y,
    image_xscale,
    image_yscale,
    image_angle,
    c_black,
    min(image_alpha, shadow_alpha)
  );
  
  shader_reset();
}