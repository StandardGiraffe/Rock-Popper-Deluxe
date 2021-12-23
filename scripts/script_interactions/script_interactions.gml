function player_explode() {
  image_alpha = 0;
  var random_angle = random(360);
  var fragment;
  fragment = instance_create_layer(x, y, "Player", obj_dead_player);
  fragment.angle = 0 + random_angle;
  fragment = instance_create_layer(x, y, "Player", obj_dead_player);
  fragment.angle = 120 + random_angle;
  fragment = instance_create_layer(x, y, "Player", obj_dead_player);
  fragment.angle = 240 + random_angle;
  
  with obj_dead_player {
    direction = angle;
    image_angle = angle;
    speed = 3;
  }
  
  audio_play_sound(snd_died, 10, 0);
}

function player_game_over() {
  instance_create_layer(0, 0, "Invisibles", obj_game_over);
  
  instance_destroy();
}

function player_respawn() {
  global.stats.lives -= 1;
  revert_to_base_stats();
  
  var respawn_angle = random(360);
  speed = 0;
  direction = respawn_angle;
  image_angle = respawn_angle;
  
  x = room_width / 2;
  y = room_height / 2;
  spawn_in(0.005);
}

function revert_to_base_stats(full_game_reset = false) {
  if full_game_reset {
    global.stats.points = global.base_stats.points;
    global.stats.lives = global.base_stats.lives;
  }
  
  global.stats.turn_rate = global.base_stats.turn_rate;
  global.stats.forward_acc = global.base_stats.forward_acc;
  global.stats.forward_speed_max = global.base_stats.forward_speed_max;
  global.stats.backward_acc = global.base_stats.backward_acc;
  global.stats.backward_speed_max = global.base_stats.backward_speed_max;
  
  global.stats.bullet_speed = global.base_stats.bullet_speed;
  global.stats.bullet_power = global.base_stats.bullet_power;
  global.stats.inertia_rate = global.base_stats.inertia_rate;
  
  if (instance_exists(obj_player)) {
    obj_player.shielded = global.base_stats.shielded;
    obj_player.max_shields = global.base_stats.max_shields;
    obj_player.current_shields = global.base_stats.current_shields;  
  }
}