function background_crystal_sparkle_effect(_intensity = 10){
  global.background_manager.change_spawning_mode("chaos");
  global.background_manager.decay_features();
      
  global.background_manager.change_feature_set(
    _intensity,
    [ global.background_features.bright_star, global.background_features.dim_star ],
    true,
    "near"
  );
      
  global.background_manager.change_feature_set(
    _intensity,
    [ global.background_features.bright_star, global.background_features.dim_star ],
    true,
    "mid"
  );
      
  global.background_manager.change_feature_set(
    _intensity,
    [ global.background_features.bright_star, global.background_features.dim_star ],
    true,
    "far"
  );
}