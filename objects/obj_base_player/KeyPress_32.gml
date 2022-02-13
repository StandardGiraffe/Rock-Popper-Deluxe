audio_play_sound(snd_shoot, 0, 0);
var my_vector = new vector_lengthdir(speed, direction);

if powerups_inventory.cannon_dual {
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
  
} else if powerups_inventory.cannon_rear {
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle + 180,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  add_recoil(b.base_speed * 0.75, b.base_power * 0.75);
  
} else if powerups_inventory.cannon_spread {
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle + random_range(15, 45),
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  b.fading = true;
  
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle - random_range(15, 45),
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  b.fading = true;
  
  add_recoil(b.base_speed * 1.5, b.base_power * 1.5);
  
} else {
  var b = shoot_projectile(
    obj_bullet_player, self,
    x, y, image_angle,
    snd_shoot,
    my_vector
  );
  setup_player_shot(b, self);
  add_recoil(b.base_speed, b.base_power);
}
