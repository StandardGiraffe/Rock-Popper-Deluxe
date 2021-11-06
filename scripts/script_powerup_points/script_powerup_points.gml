global.powerup_points_table = [
  500,
  1000,
  1500,
  2000,
  2500
]

function collect_powerup_points(_x, _y) {
  var selection = irandom(array_length(global.powerup_points_table) - 1);
  var award = global.powerup_points_table[selection];
  
  award_points(award);
  display_popup(
    string(award) + " Points!",
    _x, _y,
    undefined,
    global.powerup_points.popup_colours
  );
}

global.powerup_points = {
  inventory_name: "module_points",
  object_name: obj_powerup_points,
  sprite: spr_powerup_points,
  collect_sound: snd_shields_up,
  popup_message: "",
  popup_colours: [ c_dkgray, c_dkgray, c_ltgray, c_ltgray ],
  collect_function: collect_powerup_points
}
