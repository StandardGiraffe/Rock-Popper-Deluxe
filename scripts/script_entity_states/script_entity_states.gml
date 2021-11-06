function spawn_in(_spawn_in_rate = 0.005, _starting_spawning_alpha = 0) {
  image_alpha = 0;
  spawning = true;
  spawning_alpha = _starting_spawning_alpha;
  spawn_in_rate = _spawn_in_rate;
}

function check_if_spawning(){
  if spawning {
    spawning_alpha += spawn_in_rate;
    image_alpha = spawning_alpha;
    if spawning_alpha >= 1 {
      spawning = false;
    }
  } else {
    if image_alpha != 1 {
      image_alpha = 1
    }
  }
}

function background_sprite_set(_sprite_id = spr_background_default) {
  layer_background_sprite(
    layer_background_get_id(layer_get_id("Background")),
    _sprite_id
  );
}