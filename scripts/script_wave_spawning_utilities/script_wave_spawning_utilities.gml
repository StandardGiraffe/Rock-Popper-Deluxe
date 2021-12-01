#region Formations
  function spawn_formation_v(_enemy_id, _leader_x, _leader_y, _angle, _speed, _additional_ranks = 0, _leader_id = false) {
    // Create Leader
    var e = spawn_entity(
      _leader_x, _leader_y,
      _leader_id ? _leader_id : _enemy_id,
      _speed, _angle
    );
    e.target_direction = _angle;
    e.starting_speed = _speed;
    e.wobble_range = 0;
  
    var rank_offset = e.sprite_height * 1.5;
  
    // Populate additional ranks
    while (_additional_ranks) {
      var e = spawn_entity(
        _leader_x - lengthdir_x(rank_offset, _angle + 45),
        _leader_y - lengthdir_y(rank_offset, _angle + 45),
        _enemy_id, _speed, _angle
      );
      e.target_direction = _angle;
      e.starting_speed = _speed;
      e.wobble_range = 0;
    
      var e = spawn_entity(
        _leader_x - lengthdir_x(rank_offset, _angle - 45),
        _leader_y - lengthdir_y(rank_offset, _angle - 45),
        _enemy_id, _speed, _angle
      );
      e.target_direction = _angle;
      e.starting_speed = _speed;
      e.wobble_range = 0;
    
      rank_offset += e.sprite_height * 1.5;
      _additional_ranks --;
    }
  }

  function spawn_formation_starburst(_enemy_id, _x, _y, _speed, _number_of_enemies = 1, _suppress_wobble = false) {
    var angle_incrementation = (360 / _number_of_enemies);
    var current_angle = random(360);
    var buffer_radius = sprite_get_width(object_get_sprite(_enemy_id)) * 0.5;
  
    while (_number_of_enemies) {
      var e = spawn_entity(
        _x + lengthdir_x(buffer_radius, current_angle),
        _y + lengthdir_y(buffer_radius, current_angle),
        _enemy_id, _speed, current_angle
      );
      e.target_direction = current_angle;
      e.starting_speed = _speed;
      if (_suppress_wobble) { 
        e.wobble_range = 0;
      }
    
      current_angle += angle_incrementation;
      _number_of_enemies--;
    }
  }
#endregion Formations

#region Constructors
  function central_spawn_region() constructor {
    x = random_range(room_width * 0.3, room_width * 0.7);
    y = random_range(room_height * 0.3, room_height * 0.7);
    angle = point_direction(
      x, y,
      random(room_width), random(room_height)
    )
  }

#endregion Constructors