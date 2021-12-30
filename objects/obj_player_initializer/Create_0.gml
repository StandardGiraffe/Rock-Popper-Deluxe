global.players = [ ];

for (var i = 0; i < global.number_of_players; i++) {
  var locus = new central_spawn_region();
  var p = instance_create_layer(locus.x, locus.y, "Player", obj_player);
  
  p.direction = locus.angle;
  p.moniker = "Player " + string(i + 1);
  p.faction = factions.players;
  
  array_push(global.players, p);
}