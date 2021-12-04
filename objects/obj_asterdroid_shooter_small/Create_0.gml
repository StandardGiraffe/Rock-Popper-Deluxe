enemy = global.enemy_asterdroid_shooter_small;

event_inherited();

if (irandom(1) == 1) { self.rotation_speed *= -1 };

ready_to_shoot = false;
alarm_set(0, random_range(room_speed * 0.5, room_speed * 2.5) + room_speed * 2.5);