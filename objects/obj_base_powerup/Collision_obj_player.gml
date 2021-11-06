audio_play_sound(powerup.collect_sound, 5, 0);
display_popup(
  powerup.popup_message,
  x, y,
  undefined,
  powerup.popup_colours
)

powerup.collect_function(x, y);
instance_destroy();