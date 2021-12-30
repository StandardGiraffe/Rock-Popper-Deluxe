if (killer) {
  audio_play_sound(enemy.death_sound, 0, 0);

  if (points_value > 0) {
    award_points(points_value, killer);
    display_popup(points_value, x, y, undefined, undefined, 1.5, 0.02);  
  }

  maybe_drop_powerup(enemy.drop_chance, x, y, killer);

  generate_debris(
    x, y,
    enemy.type,
    (sprite_width * sprite_height / 50),
    image_angle,
    sprite_height, sprite_width
  )  
}
