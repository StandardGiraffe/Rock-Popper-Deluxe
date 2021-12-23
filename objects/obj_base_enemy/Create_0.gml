event_inherited();

spawn_in();

faction = factions.enemies;

mass = enemy.mass;
shield_impact_shove_multiplier = 0;
hit_sound = enemy.hit_sound;

rotation_speed = get_random_value(enemy.rotation_speed);

max_hitpoints = get_random_value(enemy.max_hitpoints);
current_hitpoints = max_hitpoints;

shielded = enemy.max_shields > 0;
if (shielded) {
  max_shields = enemy.max_shields;
  current_shields = max_shields;
}

points_value = max_hitpoints * enemy.score_multiplier;

direction = get_random_value(enemy.initial_direction);

starting_speed = get_random_value(enemy.movement_speed);
speed = starting_speed;

function show_body_damage() {
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
}

function shields_down() {
  shielded = false
  sprite_index = enemy.sprites[0];
  flash_colour = c_teal;
  audio_play_sound(snd_enemy_shields_down, 0, 0);
  draw_shield_pop(self);
}