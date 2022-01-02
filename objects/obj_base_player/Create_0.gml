event_inherited();

stats = new FreshPlayerStats(true);
show_debug_message(stats)
if (stats.max_shields) {
  max_shields = stats.max_shields;
  current_shields = max_shields;
  shielded = true;
}

max_hitpoints = stats.max_hitpoints;
current_hitpoints = max_hitpoints;

powerups_inventory = new EmptyPowerupsInventory();

faction = factions.players;
invulnerable_while_spawning = true;
mass = 25;

inertia_rate = stats.inertia_rate;

// Fresh start events
spawn_in(0.05);

// Functions
//function be_impacted(_impactor) {
//  if (_impactor.faction == faction) { return; }
//  if (invulnerable_while_spawning && spawning) { return; }
  
//  if (shielded) {
//    shields_down();
//  } else {
//    be_killed(_impactor);
//  }
//}

function be_killed(_killer) {
  player_explode();
  stats.lives -= 1;
    
  if (stats.lives > 0) {
    powerup_drop_inventory(x, y, powerups_inventory);
    player_respawn(self);
  } else {
    player_game_over(self);
  }
}

function is_repulsor_shielded() {
  return powerups_inventory.module_repulsor_shields;
}

function damage_body(damage_taken) {
  be_killed();
}

function shields_down() {
  draw_shield_pop(self);
  audio_play_sound(snd_shields_down, 1, 0);
  display_popup(
    "SHIELDS DOWN!!",
    x, y,
    fnt_small,
    [ c_red, c_red, c_maroon, c_maroon ],
    1
  )
  
  spawn_in(0.005, 0.5);
  shielded = false;
}