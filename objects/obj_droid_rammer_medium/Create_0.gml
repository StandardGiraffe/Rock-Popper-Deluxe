enemy = global.enemy_droid_rammer_medium;

event_inherited();

target_player = noone;
spinning = false;
ramming = false;
resting = false;

deceleration_curve = animcurve_get_channel(ac_droid_rammer, "ramming_speed");

function be_impacted(_impactor) { return; }