event_inherited();

if (ready_to_shoot && !spawning) {
  ready_to_shoot = false;
  
  shoot_projectile(
    obj_bullet_enemy_tiny,
    self,
    x, y, image_angle,
    snd_enemy_bullet_tiny_shoot,
    new vector_lengthdir(speed, direction)
  );
  motion_add(image_angle, -1);
  alarm_set(0, random_range(room_speed * 0.5, room_speed * 2.5));
}
