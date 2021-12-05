function map_to_range(value, current_min, current_max, desired_min, desired_max) {
  return (((value - current_min) / (current_max - current_min)) * (desired_max - desired_min)) + desired_min;
}