global.base_stats = {
  points: 0,
  lives: 3,
  max_hitpoints: 1.0,
  turn_rate: 2.0,
  forward_acc: 0.2,
  forward_speed_max: 3.0,
  backward_acc: 0.1,
  backward_speed_max: 3.0,
  inertia_rate: 0.01,
  
  bullet_speed: 8.0,
  bullet_power: 1.0,
  
  max_shields: 50.0
}

function FreshPlayerStats(full_game_reset = false) constructor {
  if full_game_reset {
    points = global.base_stats.points;
    self.lives = global.base_stats.lives;
  }
  
  max_hitpoints = global.base_stats.max_hitpoints;
  
  turn_rate = global.base_stats.turn_rate;
  forward_acc = global.base_stats.forward_acc;
  forward_speed_max = global.base_stats.forward_speed_max;
  backward_acc = global.base_stats.backward_acc;
  backward_speed_max = global.base_stats.backward_speed_max;
  inertia_rate = global.base_stats.inertia_rate;
  
  bullet_speed = global.base_stats.bullet_speed;
  bullet_power = global.base_stats.bullet_power;
  
  max_shields = global.base_stats.max_shields; 
}