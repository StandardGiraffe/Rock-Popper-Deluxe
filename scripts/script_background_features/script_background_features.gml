function BackgroundFeature(
  _sprite,
  _population_weight = 1,
  _scale_factor_min = 1,
  _scale_factor_max = 1
) constructor {
  sprite = _sprite;
  population_weight = _population_weight;
  scale_factor_min = _scale_factor_min;
  scale_factor_max = _scale_factor_max;
}

global.background_features = {
  basic: new BackgroundFeature(spr_asteroid_basic_h0, 1, 2, 4),
  basic_large: new BackgroundFeature(spr_asteroid_basic_h0, 2.5, 4, 8),
  gravel: new BackgroundFeature(spr_asteroid_gravel, 0.25, 0.5, 1.5),
  gravel_large: new BackgroundFeature(spr_asteroid_gravel_large, 0.5, 0.5, 1.5),
  splitter: new BackgroundFeature(spr_asteroid_splitter_medium_h0, 1, 2, 4),
  splitter_large: new BackgroundFeature(spr_asteroid_splitter_medium_h0, 2.5, 4, 8),
  splitter_fragment: new BackgroundFeature(spr_asteroid_splitter_medium_fragment_h0, 0.15, 0.5, 2),
  splitter_fragment_small: new BackgroundFeature(spr_asteroid_splitter_medium_fragment_h0, 0.05, 0.1, 0.5)
}