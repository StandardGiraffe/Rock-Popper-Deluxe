draw_set_alpha(lifespan / starting_lifespan);
draw_line_width_color(x1, y1, x2, y2, w, color1, color2);
lifespan --;

if (lifespan <= 0) {
  instance_destroy();
}
