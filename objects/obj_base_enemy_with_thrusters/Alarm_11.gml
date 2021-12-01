/// @description Apply Wobble
if (wobble_range) {
  target_direction += random_range(-wobble_range, wobble_range);
  alarm_set(11, room_speed * random(wobble_frequency) + 1);
}