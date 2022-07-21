// Initialization
max_population = 0;
population = 0;

entity_pool = [ ];

//// Dummy variables to replace in child objects
target_layer = noone;
layer_speed_factor = 1;


// Public Functions
function change_background_features(_max_population, _entity_pool = [ ]) {
  max_population = _max_population;
  entity_pool = _entity_pool;
}

function expire_background_features() {
  change_background_features(0);
}

// Private Functions
function update_room_population() {
  population = 0;
  
  with obj_background_feature {
    other.population += self.population_weight;
  }
}

function populate_background() {
  if (array_length(entity_pool)) < 1 { exit; }
  
  var feature = instance_create_layer(
    -3000, -3000, target_layer,
    obj_background_feature, array_sample(entity_pool)
  )
  
  feature.speed *= layer_speed_factor;
  feature.rotation_speed *= layer_speed_factor;
}
