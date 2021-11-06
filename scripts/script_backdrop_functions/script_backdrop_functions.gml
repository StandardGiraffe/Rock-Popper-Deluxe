function background_sprite_set(_sprite_id = spr_background_default) {
  layer_background_sprite(
    layer_background_get_id(layer_get_id("Background")),
    _sprite_id
  );
}