draw_set_alpha(line_alpha);
draw_line_width_color(x1, y1, x2, y2, 2, c_red, c_red);
draw_set_alpha(1);

line_alpha -= 0.04;
if line_alpha == 0 { instance_destroy(self); }
