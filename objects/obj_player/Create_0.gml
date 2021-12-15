event_inherited();

// vvvvvvvv Delete this soon
shielded = true;
current_shields = 100;
max_shields = 100;
// ^^^^^^^^ Delete this soon

// Fresh start events
spawn_in(0.05);
global.powerups_inventory = new base_powerups_inventory();

// Functions
impacted = function() {
  if !spawning {
    if (global.stats.shielded) {
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
