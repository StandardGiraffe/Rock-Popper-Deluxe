// Draw the base colour
draw_set_alpha(current_alpha);
draw_set_color(current_colour);
draw_rectangle(-50, -50, room_width + 50, room_height+ 50, false);
draw_set_alpha(1);

//draw_sprite_ext(
//  spr_pixel,
//  -1,
//  0, 0,
//  room_width, room_height,
//  0,
//  current_colour,
//  current_alpha
//)


// Handle flash
if (flash_alpha > 0) {
  //draw_set_alpha(flash_fade_counter / flash_fade_counter_start);
  //draw_set_color(flash_colour);
  //draw_rectangle(-50, -50, room_width + 50, room_height+ 50, false);
  
  shader_set(sh_flash);
  draw_sprite_ext(
    spr_pixel,
    -1,
    0, 0,
    room_width, room_height,
    0,
    flash_colour,
    flash_alpha
  );
  
  shader_reset();
}


// Reset
//draw_set_alpha(1);