check_if_spawning();

// Apply normal intertia
speed = max(speed - global.stats.inertia_rate, 0);