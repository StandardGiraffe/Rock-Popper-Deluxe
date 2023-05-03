event_inherited();

if (ready_to_shoot && !spawning) {
  ready_to_shoot = false;
  var my_vector = new vector_lengthdir(speed, direction);
  
  shoot_projectile(
    obj_bullet_enemy_small,
    self,
    x + lengthdir_x(0, image_angle),
    y + lengthdir_y(26, image_angle),
    image_angle + 90,
    snd_enemy_bullet_small_shoot,
    my_vector
  );
  shoot_projectile(
    obj_bullet_enemy_small,
    self,
    x + lengthdir_x(0, image_angle),
    y + lengthdir_y(26, image_angle),
    image_angle - 90,
    undefined,
    my_vector
  );
  shoot_projectile(
    obj_bullet_enemy_small,
    self,
    x + lengthdir_x(24, image_angle),
    y + lengthdir_y(0, image_angle),
    image_angle,
    undefined,
    my_vector
  );
  
  shoot_projectile(
    obj_bullet_enemy_tiny,
    self,
    x + lengthdir_x(16, image_angle),
    y - lengthdir_y(17, image_angle),
    image_angle - 45,
    undefined,
    my_vector
  );
  shoot_projectile(
    obj_bullet_enemy_tiny,
    self,
    x + lengthdir_x(16, image_angle),
    y + lengthdir_y(17, image_angle),
    image_angle + 45,
    undefined,
    my_vector
  );

  alarm_set(0, random_range(room_speed * 0.5, room_speed * 2.5));
}
