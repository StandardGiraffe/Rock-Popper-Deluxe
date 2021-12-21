event_inherited();
faction = factions.players;
revert_to_base_stats(true);

// Fresh start events
spawn_in(0.05);
global.powerups_inventory = new base_powerups_inventory();

// Functions
impacted = function() {
  if !spawning {
    if (shielded) {
      shields_down();
    } else {
      player_explode();
    
      if (global.stats.lives > 1) {
        powerup_drop_inventory(x, y);
        player_respawn();
      } else {
        player_game_over();
      }
    }
  }
}

function is_repulsor_shielded() {
  return global.powerups_inventory.module_repulsor_shields;
}