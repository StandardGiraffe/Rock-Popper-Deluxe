enemy = global.enemy_asteroid_gravel_large;

event_inherited();

function damage_body(damage_taken, _shooter) {
  be_killed(_shooter);
}