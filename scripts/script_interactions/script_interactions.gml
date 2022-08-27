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

function player_game_over(_player) {
  instance_deactivate_object(_player);
  
  if (array_match_all_func(global.players, 0, function(p) { return p.stats.lives; })) {
    instance_create_layer(0, 0, "Invisibles", obj_game_over);
    global.background_manager.expire_features();
    global.background_manager.decay_features();
    global.background_manager.change_colour(#000001, room_speed * 10);
  }
}

function player_respawn(_player) {
  _player.afterimage_drawing_time = 0;
  _player.afterimage_lifespan = 0;
  
  var remaining_lives = _player.stats.lives;
  var current_points = _player.stats.points;
  
  _player.stats = new FreshPlayerStats();
  _player.stats.lives = remaining_lives;
  _player.stats.points = current_points;
  
  if (_player.stats.max_shields) {
    _player.max_shields = _player.stats.max_shields;
    _player.current_shields = max_shields;
    _player.shielded = true;
  };
  
  var respawn_angle = random(360);
  speed = 0;
  direction = respawn_angle;
  image_angle = respawn_angle;
  
  x = room_width / 2;
  y = room_height / 2;
  spawn_in(0.005);
}

function simultaneous_impacts(_impactor_a, _impactor_b) {
    _impactor_a.be_impacted(_impactor_b);
    _impactor_b.be_impacted(_impactor_a);
}