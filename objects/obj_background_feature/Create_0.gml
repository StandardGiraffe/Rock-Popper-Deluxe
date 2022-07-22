void_persistent = true;
background_layer = noone;

sprite_index = sprite;
scale_factor = random_range(scale_factor_min, scale_factor_max);
image_xscale = scale_factor;
image_yscale = scale_factor;

// Position the entity somewhere randomly off-screen, as close as possible.
var longest_side = max(sprite_width, sprite_height);
var offside_direction = choose("top", "bottom", "left", "right")
switch offside_direction {
  case "top":
    x = random(room_width + longest_side * 2) - longest_side;
    y = 0 - longest_side;
    break;
    
  case "bottom":
    x = random(room_width + longest_side * 2) - longest_side;
    y = room_height + longest_side;
    break;
  
  case "left":
    x = 0 - longest_side;
    y = random(room_height + longest_side * 2) - longest_side;
    break;
  
  case "right":
    break;
    x = room_width + longest_side;
    y = random(room_height + longest_side * 2) - longest_side;
}

image_angle = random_range(0, 360);
direction = point_direction(
  x, y,
  random_range(room_width * 0.3, room_width * 0.7),
  random_range(room_height * 0.3, room_height * 0.7)
);
rotation_speed = random(1 / scale_factor) * choose(1, -1);
speed = random(1 / scale_factor);
