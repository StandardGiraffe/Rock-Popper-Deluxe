enemy = global.enemy_droid_straight_shoot_spread;

event_inherited();

ready_to_shoot = false;
alarm_set(0, random_range(room_speed * 0.5, room_speed * 2.5) + room_speed * 2.5);