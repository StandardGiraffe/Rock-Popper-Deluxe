event_inherited();

// Spawn splitters!
var baby = spawn_entity(
  x + irandom(20),
  y + irandom(20),
  obj_asteroid_splitter_medium_fragment
)
spawn_in_complete(baby);

var baby = spawn_entity(
  x + irandom(20),
  y + irandom(20),
  obj_asteroid_splitter_medium_fragment
)
spawn_in_complete(baby);