audio_play_sound(enemy.death_sound, 0, 0);

if points_value > 0 {
  award_points(points_value);
  display_popup(points_value, x, y);  
}

maybe_drop_powerup(enemy.drop_chance, x, y);

generate_debris(
  x, y,
  enemy.type,
  (sprite_width * sprite_height / 50),
  image_angle,
  sprite_height, sprite_width
)