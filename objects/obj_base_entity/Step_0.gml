check_if_spawning();

if (flash_alpha > 0) {
  flash_alpha -= 0.15
}

// Fade unneeded shield bar
if (current_shields == max_shields) && (shield_bar_opacity > 0) {
  shield_bar_opacity = max(shield_bar_opacity - 0.025, 0);
}

// Regenerate Shields
if (shielded && (current_shields < max_shields)) {
  current_shields = min(current_shields + max_shields / 1800, max_shields);
}