check_if_spawning();

// Regenerate shields
if (global.stats.shielded && (global.stats.current_shields < global.stats.max_shields)) {
  global.stats.current_shields += (global.stats.max_shields / 1800);
  clamp(global.stats.current_shields, 0, global.stats.max_shields);
}

// Apply normal intertia
speed = max(speed - global.stats.inertia_rate, 0);