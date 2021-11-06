enemy = global.enemy_asteroid_cluster_mega;

event_inherited();

spit_asteroid = false;
alarm_set(0, room_speed * random_range(5, 8));