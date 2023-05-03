/// @description Display the message
if (centred) { centre_text_horizontally(); }

draw_set_font(font);

draw_text_color(
  locus[0], locus[1],
  text_message,
  text_colours[0],
  text_colours[1],
  text_colours[2],
  text_colours[3],
  alpha
)