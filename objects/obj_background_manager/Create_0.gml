// Grab managers
near_f = global.background_feature_layer_manager_near;
mid_f = global.background_feature_layer_manager_mid;
far_f = global.background_feature_layer_manager_far;

near_c = global.background_colour_near;
mid_c = global.background_colour_mid;
far_c = global.background_colour_far;


// Public Functions
//// Colour Functions
function change_colour(_new_colour, _fade_time = -1, _target = "all") {
  with delegate_to_colour_layer(_target) {
    self.change_colour(_new_colour, _fade_time);
  }
}

function change_alpha(_new_alpha, _fade_time = -1, _target = "all") {
  with delegate_to_colour_layer(_target) {
    self.change_alpha(_new_alpha, _fade_time);
  }
}

//// Feature Functions
function change_feature_set(_max_population, _entity_pool = [ ], _target = "all") {
  with delegate_to_feature_layer(_target) {
    self.change_feature_set(_max_population, _entity_pool);
  }
}

function expire_features(_target = "all") {
  with delegate_to_feature_layer(_target) {
    self.expire_features();
  }
}

// Private Functions
function delegate_to_colour_layer(_target) {
  switch _target {
    case "all":
      return obj_background_colour_layer;
      
    case "near":
      return near_c;
      
    case "mid":
      return mid_c;
      
    case "far":
      return far_c;
  }
}

function delegate_to_feature_layer(_target) {
  switch _target {
    case "all":
      return obj_base_background_feature_layer_manager;
      
    case "near":
      return near_f;
      
    case "mid":
      return mid_f;
      
    case "far":
      return far_f
  }
}