// Initialization
max_population = 0;
population = 0;

entity_pool = [ ];
hyperspace_velocity = 0;

spawning_mode = "normal"  // normal / hyperspace / chaos

//// Dummy variables to replace in child objects
target_layer = noone;
layer_speed_factor = 1;


// Public Functions
function change_feature_set(_max_population, _entity_pool = [ ], _decay_current_features) {
  max_population = _max_population;
  entity_pool = _entity_pool;
  
  if _decay_current_features {
    start_feature_decay(0, room_speed * 3);
  }
}

function change_spawning_mode(_new_spawning_mode = "normal") {
  if (spawning_mode == _new_spawning_mode) { exit; }
  
  spawning_mode = _new_spawning_mode;
  
  switch _new_spawning_mode {
    case "normal":
      end_feature_decay();
      break;
      
    case "hyperspace":
      hyperspace_velocity = 0;
      break;
      
    case "chaos":
      start_feature_decay();
      break;
  }
}

function expire_features() {
  change_feature_set(0);
}

// Private Functions
function update_room_population() {
  population = 0;
  
  with obj_background_feature {
    if (self.background_layer == other.target_layer) {
      other.population += self.population_weight;
    }
  }
}

function populate_background() {
  if (array_length(entity_pool)) < 1 { exit; }
  
  var feature = instance_create_layer(
    -1000, -1000, target_layer,
    obj_background_feature, array_sample(entity_pool)
  );
  
  with feature {
    background_layer = other.target_layer;
    speed *= other.layer_speed_factor;
    rotation_speed *= other.layer_speed_factor;  
  }
  
  switch spawning_mode {
    case "normal":
      send_feature_inwards(feature);
      break;
    
    case "hyperspace":
      send_feature_outwards(feature);
      break;
      
    case "chaos":
      spawn_feature_randomly(feature);
      break;
  }
}

function start_feature_decay(_min = 0, _max = 3 * room_speed) {
  with obj_background_feature {
    if (self.background_layer != other.target_layer) { continue; }
    
    self.start_decay_timer(_min, _max);
  }
}

function end_feature_decay() {
  with obj_background_feature {
    if (self.background_layer != other.target_layer) { continue; }
    
    self.decay_timer = -1;
  }
}

function send_feature_inwards(_feature) {
  with _feature {
    var offside_direction = choose("top", "bottom", "left", "right")
    switch offside_direction {
      case "top":
        x = random(room_width + longest_side * 2) - longest_side;
        y = 0 - longest_side;
        break;
    
      case "bottom":
        x = random(room_width + longest_side * 2) - longest_side;
        y = room_height + longest_side;
        break;
  
      case "left":
        x = 0 - longest_side;
        y = random(room_height + longest_side * 2) - longest_side;
        break;
  
      case "right":
        break;
        x = room_width + longest_side;
        y = random(room_height + longest_side * 2) - longest_side;
    }

    direction = point_direction(
      x, y,
      random_range(room_width * 0.3, room_width * 0.7),
      random_range(room_height * 0.3, room_height * 0.7)
    );
  }
}

function send_feature_outwards(_feature) {
  with _feature {
    x = (room_width / 2) + random_range(-room_width / 10, room_width / 10);
    y = (room_height / 2) + random_range(-room_height / 10, room_height / 10);
    
    direction = random(360);
  }
}

function spawn_feature_randomly(_feature) {
  with _feature {
    x = random(room_width);
    y = random(room_height);
    
    direction = random(360);
    speed *= 2;
    
    spawning = true;
    image_alpha = 0;
    start_decay_timer(room_speed * 5, room_speed * 10);
  }
}