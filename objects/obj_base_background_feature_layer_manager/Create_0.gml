// Initialization
max_population = 0;
population = 0;

entity_pool = [ ];

//// Dummy variables to replace in child objects
target_layer = noone;
layer_speed_factor = 1;


// Public Functions
function change_feature_set(_max_population, _entity_pool = [ ]) {
  max_population = _max_population;
  entity_pool = _entity_pool;
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
  
  feature.background_layer = target_layer;
  feature.speed *= layer_speed_factor;
  feature.rotation_speed *= layer_speed_factor;
}
