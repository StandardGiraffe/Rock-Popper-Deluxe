event_inherited();

var target_player = instance_nearest(x, y, obj_base_player);
if (instance_exists(target_player) && spit_asteroid) {
  spit_asteroid = false;
  alarm_set(0, room_speed * random_range(2, 5));
  
  var player_direction = point_direction(x, y, target_player.x, target_player.y);
  var selection = irandom(0);
  switch selection {
    case 0:
      var spat_asteroid = spawn_entity(x, y, obj_asteroid_basic, undefined, player_direction);
      break;
      
    //case 1:
    //  var spat_asteroid = spawn_entity(x, y, obj_asteroid_splitter_medium, undefined, player_direction);
    //  break;
  }
  audio_play_sound(snd_split, 0, 0);
  
  //with spat_asteroid {
    spat_asteroid.starting_speed += 1;
    spat_asteroid.speed = spat_asteroid.starting_speed;
    spat_asteroid.points_value = 0;
    spawn_in_complete(spat_asteroid);
  //}
}