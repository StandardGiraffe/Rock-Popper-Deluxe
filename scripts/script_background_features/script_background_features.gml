function BackgroundFeature(
  _sprite,
  _population_weight = 1,
  _scale_factor_min = 1,
  _scale_factor_max = 1,
  _shadow_alpha = 0.75,
  _straight_flying = false
) constructor {
  sprite = _sprite;
  population_weight = _population_weight;
  scale_factor_min = _scale_factor_min;
  scale_factor_max = _scale_factor_max;
  shadow_alpha = _shadow_alpha;
  straight_flying = _straight_flying;
}

global.background_features = {
  bright_star: new BackgroundFeature(spr_background_feature_bright_star, 1, 1, 2, 0),
  dim_star: new BackgroundFeature(spr_background_feature_dim_star, 0.25, 1, 2, 0),
  
  basic: new BackgroundFeature(spr_asteroid_basic_h0, 1, 2, 4),
  basic_large: new BackgroundFeature(spr_asteroid_basic_h0, 2.5, 4, 8),
  
  gravel: new BackgroundFeature(spr_asteroid_gravel, 0.25, 0.5, 1.5),
  gravel_large: new BackgroundFeature(spr_asteroid_gravel_large, 0.5, 0.5, 1.5),
  
  armoured_box: new BackgroundFeature(spr_asteroid_armoured_h0, 1, 0.5, 0.75),
  armoured_box_large: new BackgroundFeature(spr_asteroid_armoured_h0, 2, 1, 1.5),
  
  splitter: new BackgroundFeature(spr_asteroid_splitter_medium_h0, 1, 2, 4),
  splitter_large: new BackgroundFeature(spr_asteroid_splitter_medium_h0, 2.5, 4, 8),
  splitter_fragment: new BackgroundFeature(spr_asteroid_splitter_medium_fragment_h0, 0.5, 0.5, 2),
  splitter_fragment_small: new BackgroundFeature(spr_asteroid_splitter_medium_fragment_h0, 0.1, 0.1, 0.5),
  
  straight_shooter: new BackgroundFeature(spr_droid_straight_shoot_sh, 1, 0.75, 1, 0.25, true),
  spread_shooter: new BackgroundFeature(spr_droid_straight_shoot_spread_sh, 2, 0.75, 1, 0.25, true),
  
  rammer_mini: new BackgroundFeature(spr_droid_rammer_mini_h0, 1, 0.75, 0.75, 0.25, true),
  rammer_medium: new BackgroundFeature(spr_droid_rammer_medium_h0, 2, 0.75, 0.75, 0.25, true),
  
  basic_large_throbbing: new BackgroundFeature(spr_asteroid_basic_h3, 2, 4, 8, 0),
  splitter_large_throbbing: new BackgroundFeature(spr_asteroid_splitter_medium_h3, 2, 4, 8, 0)
}