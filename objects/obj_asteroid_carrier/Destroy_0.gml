event_inherited();

var result = irandom(2);

switch (result) {
  case 0:
    times_do(3, function(){
      var e = spawn_entity(
        x + random_range(-20, 20), y + random_range(-20, 20),
        obj_asteroid_basic,
        speed + random_range(-1, 1),
        direction + random_range(-5, 5),
        rotation_speed + random_range(-1, 1)
      )
      e.spawning = false;
    })
    break;
    
  case 1:
    times_do(2, function(){
      var e = spawn_entity(
        x + random_range(-20, 20), y + random_range(-20, 20),
        obj_asteroid_splitter_medium,
        speed + random_range(-1, 1),
        direction + random_range(-5, 5),
        rotation_speed + random_range(-1, 1)
      )
      e.spawning = false;
    });
    break;
    
  case 2:
    times_do(6, function() {
      var e = spawn_entity(
        x + random_range(-20, 20),
        y + random_range(-20, 20),
        obj_asteroid_splitter_medium_fragment,
        speed,
        direction,
        rotation_speed + random_range(-1, 1)
      )
      e.spawning = false;
    })
    break;
}