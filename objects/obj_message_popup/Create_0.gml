/// @description Initial setup
// Functions
set_fade_delay = function(_seconds) {
  alarm_set(0, -1);
  fading = false;
  alarm_set(0, _seconds * room_speed);
}

alpha = 1;
fade_rate = 0.03;

text_message = "NULL";
text_colours = [
  c_white,
  c_white,
  c_white,
  c_white,
]

font = fnt_small;
locus = [ x, y ];
centred = false;

draw_set_font(fnt_small);
draw_set_alpha(alpha);

function centre_text_horizontally() {
  draw_set_halign(fa_center);
  locus[0] = room_width / 2;
}