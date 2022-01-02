function spawn_in(_spawn_in_rate = 0.005, _starting_spawning_alpha = 0, _entity = self) {
  _entity.image_alpha = 0;
  _entity.spawning = true;
  _entity.spawning_alpha = _starting_spawning_alpha;
  _entity.spawn_in_rate = _spawn_in_rate;
}

function spawn_in_complete(_entity) {
  _entity.image_alpha = 1;
  _entity.spawning = false;
}

function check_if_spawning(){
  if spawning {
    spawning_alpha += spawn_in_rate;
    image_alpha = spawning_alpha;
    if spawning_alpha >= 1 {
      image_alpha = 1;
      spawning = false;
    }
  }
}
