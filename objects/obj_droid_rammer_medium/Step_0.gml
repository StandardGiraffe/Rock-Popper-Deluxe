event_inherited();

if (!ramming && !resting && !spawning) {
  target_player = instance_nearest(x, y, obj_base_player);
  
  if (target_player) {
    spinning = true;
    speed = 0;
    rotation_speed += 0.35;
  
    if rotation_speed < 45 {
      ram_direction = point_direction(x, y, target_player.x, target_player.y);
    } else if rotation_speed > 60 {
      target_player = noone;
      rotation_speed = 0;
      direction = ram_direction;
      spinning = false;
      ramming = true;
      ramming_fuel_max = irandom_range(30, 60);
      ramming_fuel = ramming_fuel_max;
      stopping_point = random_range(0.5, 2.5);
      audio_play_sound(snd_zoom, 0, 0);
    }
  }
  
} else if !spinning && !resting && !spawning {
  draw_afterimage(self, x, y, 0.5);
  speed = animcurve_channel_evaluate(
    deceleration_curve,
    (ramming_fuel / ramming_fuel_max)
  ) * 40;
  
  ramming_fuel -= 1;
  
  if ramming_fuel < stopping_point {
    ramming = false;
    resting = true;
    alarm_set(0, irandom_range(1.5, 3) * room_speed);
    rotation_speed = get_random_value(enemy.rotation_speed);
  }
}