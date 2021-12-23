event_inherited();

faction = factions.players;
invulnerable_while_spawning = true;
mass = 25;

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
      be_killed();
    }
  }
}

function be_killed() {
  player_explode();
    
  if (global.stats.lives > 1) {
    powerup_drop_inventory(x, y);
    player_respawn();
  } else {
    player_game_over();
  }
}

function is_repulsor_shielded() {
  return global.powerups_inventory.module_repulsor_shields;
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