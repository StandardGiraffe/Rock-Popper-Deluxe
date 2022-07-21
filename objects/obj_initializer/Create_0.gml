/// @description Instantiate the game-critical, persistant objects.
global.number_of_players = 1;

instance_create_layer(0, 0, "Invisibles", obj_controls);
instance_create_layer(0, 0, "Invisibles", obj_screen_effects);
instance_create_layer(0, 0, "Invisibles", obj_particle_system);


// Initialize Background Machinery
//// Colours
global.background_colour_near = instance_create_layer(0, 0, "near_colour", obj_background_colour_layer);
global.background_colour_mid = instance_create_layer(0, 0, "mid_colour", obj_background_colour_layer);
global.background_colour_far = instance_create_layer(0, 0, "far_colour", obj_background_colour_layer);
global.background_colour_manager = instance_create_layer(0, 0, "Invisibles", obj_background_colour_manager);

global.background_colour_near.current_alpha = 0.8;
global.background_colour_mid.current_alpha = 0.3;
global.background_colour_far.current_alpha = 0.3;

global.background_colour_manager.change_background_colour(#0C0019, room_speed * 5);

//// Features
global.background_feature_manager_near = instance_create_layer(0, 0, "Invisibles", obj_background_feature_manager_near);
global.background_feature_manager_mid = instance_create_layer(0, 0, "Invisibles", obj_background_feature_manager_mid);
global.background_feature_manager_far = instance_create_layer(0, 0, "Invisibles", obj_background_feature_manager_far);

enum powerup_module_types {
  cannons,
  engines,
  shields,
  weapon
}

room_goto_next();