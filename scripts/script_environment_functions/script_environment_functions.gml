function spawn_entity_randomly(_object_name, _spawn_at_safe_distance = true, _safety_target = obj_base_player) {
  var _x = random(room_width);
  var _y = random(room_height);
  
  if _spawn_at_safe_distance {
    while (point_distance(_safety_target.x, _safety_target.y, _x, _y) < 100) {
      _x = random(room_width)
      _y = random(room_height)
    }  
  }
  
  return spawn_entity(_x, _y, _object_name);
}

function spawn_entity(_x, _y, _object_name, _speed = undefined, _direction = undefined, _rotation_speed = undefined) {
  var entity = instance_create_layer(
    _x,
    _y,
    "Entities",
    _object_name
  )
  
  if _speed { entity.starting_speed = _speed; entity.speed = entity.starting_speed }
  if _direction { entity.direction = _direction }
  if _rotation_speed { entity.rotation_speed = _rotation_speed }
  
  return entity;
}

function display_popup(_message, _x, _y, _font = fnt_small, _colours = [ c_white, c_white, c_white, c_white ], _fade_delay = 1, _fade_rate = 0.03, _centred_horizontally = false) {
  var popup = instance_create_layer(
    _x, _y,
    "Popups",
    obj_message_popup
  );
  
  popup.text_message = _message;
  popup.text_colours = _colours;
  popup.font = _font;
  popup.centred = _centred_horizontally;
  popup.set_fade_delay(_fade_delay);
  popup.fade_rate = _fade_rate;
  
  popup.set_fade_delay(_fade_delay);
}