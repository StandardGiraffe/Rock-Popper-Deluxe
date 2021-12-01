audio_play_sound(snd_shoot, 0, 0);

if global.powerups_inventory.bullet_dual_shot {
  var b = shoot_projectile(
    obj_bullet_player,
    x + lengthdir_x(5, image_angle + 90),
    y + lengthdir_y(5, image_angle + 90),
    image_angle,
    snd_shoot
  );
  setup_player_shot(b);
  add_recoil(b.max_speed, b.shot_power);
  
  var b = shoot_projectile(
    obj_bullet_player,
    x + lengthdir_x(5, image_angle - 90),
    y + lengthdir_y(5, image_angle - 90),
    image_angle,
    snd_shoot
  );
  setup_player_shot(b);
  add_recoil(b.max_speed, b.shot_power);
  
} else {
  var b = shoot_projectile(obj_bullet_player, x, y, image_angle, snd_shoot);
  setup_player_shot(b);
  add_recoil(b.max_speed, b.shot_power);
}
