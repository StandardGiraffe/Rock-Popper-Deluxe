motion_add(point_direction(other.x, other.y, x, y), 4);

audio_play_sound(snd_platform_core_impact, 10, false);

part_particles_create(
  global.particles_debris,
  x + lengthdir_x(12, point_direction(x, y, other.x, other.y)),
  y + lengthdir_y(12, point_direction(x, y, other.x, other.y)),
  global.particle_debris_glass_dust_a,
  irandom_range(5, 10)
);

part_particles_create(
  global.particles_debris,
  x + lengthdir_x(12, point_direction(x, y, other.x, other.y)),
  y + lengthdir_y(12, point_direction(x, y, other.x, other.y)),
  global.particle_debris_glass_dust_b,
  irandom_range(5, 10)
);

bouncing_cooldown = room_speed * 0.25;