check_if_spawning();

#region Handle Sub-Modules

  for (var i = 0; i < array_length(sub_modules); i++) {
    var sub_module = sub_modules[i];
  
    if sub_module.is_destroyed_module { continue; }
  
    handle_sub_module(sub_module);
  }

#endregion Handle Sub-Modules

#region Handle Tick-downs

// Handle grappled
  if (grappled > 0) {
    grappled --;
  }

  // Fade out flashes
  if (flash_alpha > 0) {
    flash_alpha -= 0.15
  }

#endregion Handle Tick-downs

#region Handle Shields

  // Show shield bar while regenerating (if restored)
  if (shielded && (current_shields < max_shields)) {
    shield_bar_opacity = 1;
  }

  // Fade unneeded shield bar
  if (current_shields == max_shields) && (shield_bar_opacity > 0) {
    shield_bar_opacity = max(shield_bar_opacity - 0.025, 0);
  }

  // Regenerate Shields
  if (shielded && (current_shields < max_shields)) {
    current_shields = min(current_shields + max_shields / 1800, max_shields);
  
    if current_shields == max_shields { on_shields_repaired() }
  }
  
#endregion Handle Shields


// Apply inertia if necessary
if (inertia_rate > 0) {
  var grapple_penalty = (grappled ? 5 : 1);
  apply_inertia(inertia_rate * grapple_penalty);
}