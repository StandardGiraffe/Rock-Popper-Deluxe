spawn_in(0.05);

global.powerups_inventory = new base_powerups_inventory();

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
