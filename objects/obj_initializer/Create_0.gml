/// @description Instantiate the game-critical, persistant objects.
global.number_of_players = 1;

instance_create_layer(0, 0, "Invisibles", obj_controls);
instance_create_layer(0, 0, "Invisibles", obj_screen_effects);
instance_create_layer(0, 0, "Invisibles", obj_particle_system);
instance_create_layer(0, 0, "Invisibles", obj_projectiles);

room_goto_next();