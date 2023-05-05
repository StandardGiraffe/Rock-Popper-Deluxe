motion_add(point_direction(other.x, other.y, x, y), 4);

var tone = choose(
  snd_micro_core_tone_1,
  snd_micro_core_tone_2,
  snd_micro_core_tone_3,
  snd_micro_core_tone_4,
  snd_micro_core_tone_5,
  snd_micro_core_tone_6,
  snd_micro_core_tone_7,
  snd_micro_core_tone_8,
  snd_micro_core_tone_9
)
audio_play_sound(tone, 10, false);

part_particles_create(
  global.particles_debris,
  x + lengthdir_x(12, point_direction(x, y, other.x, other.y)),
  y + lengthdir_y(12, point_direction(x, y, other.x, other.y)),
  global.particle_debris_glass_dust_a,
  irandom_range(0, 2)
);

part_particles_create(
  global.particles_debris,
  x + lengthdir_x(12, point_direction(x, y, other.x, other.y)),
  y + lengthdir_y(12, point_direction(x, y, other.x, other.y)),
  global.particle_debris_glass_dust_b,
  irandom_range(0, 2)
);

bouncing_cooldown = room_speed * 0.25;