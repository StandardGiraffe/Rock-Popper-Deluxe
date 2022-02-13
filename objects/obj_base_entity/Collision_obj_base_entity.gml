if (!spawning && !other.spawning && (other.faction != faction)) {
  var my_shove_direction = point_direction(other.x, other.y, x, y);
  var others_shove_direction = point_direction(x, y, other.x, other.y);
  var raw_impact_magnitude = ((max(other.speed, 1) * other.mass) + (max(speed, 1) * mass));
  
  var others_shove_magnitude = (max(speed, 1) * mass) / raw_impact_magnitude * 5;
  var my_shove_magnitude = (max(other.speed, 1) * other.mass) / raw_impact_magnitude * 5;

  if (other.faction == factions.players || other.faction == factions.player_one || other.faction == factions.player_two || other.faction == factions.player_three || other.faction == factions.player_four ) {
    on_collided_with_player();
  }

  be_shoved(my_shove_direction, my_shove_magnitude, undefined, 0.25, 0.25);
  other.be_shoved(others_shove_direction, others_shove_magnitude, undefined, 0.25, 0.25); 
  screen_shake(10, 2, 0.1, true);
  
  simultaneous_impacts(other, self);
}