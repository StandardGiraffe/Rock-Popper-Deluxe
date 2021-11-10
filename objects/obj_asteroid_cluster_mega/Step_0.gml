event_inherited();

if (instance_exists(obj_player) && spit_asteroid) {
  spit_asteroid = false;
  alarm_set(0, room_speed * random_range(2, 5));
  
  var player_direction = point_direction(x, y, obj_player.x, obj_player.y);
  var selection = irandom(1);
  switch selection {
    case 0:
      var spat_asteroid = spawn_entity(x, y, obj_asteroid_basic, undefined, player_direction);
      break;
      
    case 1:
      var spat_asteroid = spawn_entity(x, y, obj_asteroid_splitter_medium, undefined, player_direction);
      break;
  }
  audio_play_sound(snd_split, 0, 0);
  spat_asteroid.starting_speed += 1;
  spat_asteroid.speed = spat_asteroid.starting_speed;
  spat_asteroid.points_value = 0;
}