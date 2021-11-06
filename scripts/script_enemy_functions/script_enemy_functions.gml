function award_points(number) {
  global.stats.points += number;
}

//function display_points_popup(_x, _y, _points_value) {
//  var popup = instance_create_layer(_x, _y, "PointsPopups", obj_points_popup)
//  popup.points_value = points_value
//}

function get_random_value(args) {
  if args.as_int {
    return args.base + irandom_range(args.min, args.max)
  } else {
    return args.base + random_range(args.min, args.max)
  }
}

/// Returns the index of the correct sprite to show based on health remaining
function sprite_based_on_damage(sprite_array) {
  var health_remaining = floor((current_hitpoints / max_hitpoints) * 100);
  if health_remaining > 75 {
    return sprite_array[0];
  } else if health_remaining > 50 {
    return sprite_array[1];
  } else if health_remaining > 25 {
    return sprite_array[2];
  } else {
    return sprite_array[3];
  }
}

function maybe_drop_powerup(_drop_chance, _x, _y) {
  if (_drop_chance != -1) && (irandom_range(1, _drop_chance) == _drop_chance) {
    instance_create_layer(
      _x, _y,
      "Entities",
      get_random_powerup()
    )
  }
}