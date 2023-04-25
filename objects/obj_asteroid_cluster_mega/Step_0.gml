event_inherited();

var target_player = instance_nearest(x, y, obj_base_player);
if (instance_exists(target_player) && spit_asteroid) {
  spit_asteroid = false;
  alarm_set(0, room_speed * random_range(4, 6));
  
  var player_direction = point_direction(x, y, target_player.x, target_player.y);
  var exit_point = get_exit_point(x, y, player_direction)
  var ejecta = [
    obj_asteroid_gravel,
    obj_asteroid_gravel,
    obj_asteroid_gravel,
    obj_asteroid_splitter_medium_fragment,
    obj_asteroid_splitter_medium_fragment
  ];
  
  for (var i = 0; i <= 4; i++) {
    if (irandom_range(1, 5) > 4) { continue; }
        
    draw_ejecta_dust(exit_point[0], exit_point[1], 1, 3);
    var spat_asteroid = spawn_ejecta(exit_point[0], exit_point[1], player_direction + random_range(-30, 30), ejecta[i]);
    with spat_asteroid {
      speed *= random_range(1.25, 1.5);
      points_value = 0;
      void_persistent = false;
      spawn_in_complete(self);
    }
  }
      
  // ... And the big one.
  draw_ejecta_dust(exit_point[0], exit_point[1], 1, 3);
  var spat_asteroid = spawn_ejecta(exit_point[0], exit_point[1], player_direction, obj_asteroid_basic);
  with spat_asteroid {
    speed *= random_range(1.25, 1.5);
    points_value = 0;
    void_persistent = false;
    spawn_in_complete(self);
  }

  audio_play_sound(snd_split, 0, 0);
}