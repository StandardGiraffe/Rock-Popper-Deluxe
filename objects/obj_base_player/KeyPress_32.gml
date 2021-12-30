audio_play_sound(snd_shoot, 0, 0);
var my_vector = new vector_lengthdir(speed, direction);

if powerups_inventory.bullet_dual_shot {
  var b = shoot_projectile(
    obj_bullet_player, self,
    x + lengthdir_x(5, image_angle + 90),
    y + lengthdir_y(5, image_angle + 90),
    image_angle,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  add_recoil(b.base_speed, b.base_power);
  
  var b = shoot_projectile(
    obj_bullet_player, self,
    x + lengthdir_x(5, image_angle - 90),
    y + lengthdir_y(5, image_angle - 90),
    image_angle,
    undefined,
    my_vector
  );
  setup_player_shot(b, self);
  add_recoil(b.base_speed, b.base_power);
  
} else {
  var b = shoot_projectile(
    obj_bullet_player,  self,
    x, y, image_angle,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  add_recoil(b.base_speed, b.base_power);
}
