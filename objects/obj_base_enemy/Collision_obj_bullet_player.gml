var damage_taken = other.shot_power;
var impact_magnitude = ((damage_taken * 8) + other.max_speed) / enemy.mass;
var impact_direction = other.get_direction();

draw_bullet_impact_particles(other.x, other.y);
instance_destroy(other);
  
// Take damage:
flash_alpha = 1;  // Start the damage flash animation
current_hitpoints -= damage_taken;

// Show damage:
var _current_sprite = sprite_index;
var _new_sprite = sprite_based_on_damage(enemy.sprites);
if (_current_sprite != _new_sprite) {
  generate_debris(
    x, y,
    enemy.type,
    (sprite_width * sprite_height / 1500),
    image_angle,
    sprite_height, sprite_width
  );
  
  sprite_index = _new_sprite;
}

if (current_hitpoints < 1) {
  instance_destroy();
} else {
  audio_play_sound(enemy.hit_sound, 0, 0);
}
  
// Update direction
motion_add(impact_direction, impact_magnitude);