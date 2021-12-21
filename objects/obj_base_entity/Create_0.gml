faction = factions.neutrals;

shielded = false;
repulsor_shielded = false;
current_shields = 0;
max_shields = 0;
shield_bar_opacity = 0;
shield_bar_damage_opacity = 0;
previous_shields = 0;

void_persistent = true;

flash_alpha = 0;
flash_colour = c_white;

// Returns x1, y1, x2, y2
function get_shield_bar_location(_remaining_normal = 1, _damage_start_normal = 0) {
  var bar_width = (sprite_width + sprite_height) / 2;
  var x1 = (x - (bar_width / 2) + (bar_width * _damage_start_normal));
  var x2 = x1 + bar_width * _remaining_normal;
  var y1 = (y + (sprite_height / 2) + 10);
  var y2 = y1 + 8;
  
  return [ x1, y1, x2, y2 ];
}

function is_repulsor_shielded() {
  return repulsor_shielded;
}