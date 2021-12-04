event_inherited();

if (ready_to_shoot && !spawning) {
  ready_to_shoot = false;

  shoot_projectile(
    obj_bullet_enemy_small,
    x + lengthdir_x(0, image_angle),
    y + lengthdir_y(26, image_angle),
    image_angle + 90,
    snd_enemy_bullet_small_shoot
  );
  shoot_projectile(
    obj_bullet_enemy_small,
    x + lengthdir_x(0, image_angle),
    y + lengthdir_y(26, image_angle),
    image_angle - 90
  );
  shoot_projectile(
    obj_bullet_enemy_small,
    x + lengthdir_x(24, image_angle),
    y + lengthdir_y(0, image_angle),
    image_angle
  );
  
  shoot_projectile(
    obj_bullet_enemy_tiny,
    x + lengthdir_x(16, image_angle),
    y - lengthdir_y(17, image_angle),
    image_angle - 45,
    snd_enemy_bullet_tiny_shoot
  );
  shoot_projectile(
    obj_bullet_enemy_tiny,
    x + lengthdir_x(16, image_angle),
    y + lengthdir_y(17, image_angle),
    image_angle + 45,
  );

  alarm_set(0, random_range(room_speed * 0.5, room_speed * 2.5));
}