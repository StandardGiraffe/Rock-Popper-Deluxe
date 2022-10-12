/// @description Instantiate particles

global.particles = part_system_create_layer("Entities", true);
global.particles_debris = part_system_create_layer("Player", true);

#region Faction Bullet Trails

// Shot trail for Players Faction
global.particle_bullet_trail_faction_players = part_type_create();
var p = global.particle_bullet_trail_faction_players;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_aqua, c_grey);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Enemies Faction
global.particle_bullet_trail_faction_enemies = part_type_create();
var p = global.particle_bullet_trail_faction_enemies;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_lime, c_green, c_olive);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Player One Faction
global.particle_bullet_trail_faction_player_one = part_type_create();
var p = global.particle_bullet_trail_faction_player_one;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_blue, c_navy);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Player Two Faction
global.particle_bullet_trail_faction_player_two = part_type_create();
var p = global.particle_bullet_trail_faction_player_two;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_red, c_maroon);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Player Three Faction
global.particle_bullet_trail_faction_player_three = part_type_create();
var p = global.particle_bullet_trail_faction_player_three;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_yellow, c_orange);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Player Four Faction
global.particle_bullet_trail_faction_player_four = part_type_create();
var p = global.particle_bullet_trail_faction_player_four;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_fuchsia, c_purple);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Shot trail for Neutrals Faction
global.particle_bullet_trail_faction_neutrals = part_type_create();
var p = global.particle_bullet_trail_faction_neutrals;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_white, c_gray, c_dkgray);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.3, 0, 0);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 0.75);

#endregion Faction Bullet Trails

#region Bullet Powerup Particles

  #region Power Shots
  
  // Power Shot trail
  global.particle_bullet_trail_power_shot = part_type_create();
  var p = global.particle_bullet_trail_power_shot;
  part_type_shape(p, pt_shape_circle);
  part_type_size(p, 0.5, 0.1, -0.01, false);
  part_type_color2(p, c_teal, c_dkgray);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0.6, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1, room_speed * 1.5);  
  
  // Power Shot impact
  global.particle_bullet_impact_power_shot = part_type_create();
  var p = global.particle_bullet_impact_power_shot;
  part_type_shape(p, pt_shape_ring);
  part_type_size(p, 1, 1.5, 0.1, false);
  part_type_color2(p, c_white, c_teal);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.15, room_speed * 0.25);
  
  #endregion Power Shots

  #region Seeking Shots
  
  // Seeking Shot Trail (Tracer)
  global.particle_bullet_trail_seeking_shot_tracer = part_type_create();
  var p = global.particle_bullet_trail_seeking_shot_tracer;
  part_type_shape(p, pt_shape_pixel);
  part_type_size(p, 1, 1, 0, false);
  part_type_color3(p, c_white, c_orange, c_dkgray);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1.5, room_speed * 1.5);
  
  // Seeking Shot Impact (Orange)
  global.particle_bullet_impact_seeking_shot_a = part_type_create();
  var p = global.particle_bullet_impact_seeking_shot_a;
  part_type_shape(p, pt_shape_pixel);
  part_type_size(p, 1, 1, 0, false);
  part_type_color3(p, c_white, c_orange, c_orange);
  part_type_alpha3(p, 1, 1, 0);
  part_type_speed(p, 0.1, 0.75, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.5, room_speed * 1);
  
  // Seeking Shot Impact (White)
  global.particle_bullet_impact_seeking_shot_b = part_type_create();
  var p = global.particle_bullet_impact_seeking_shot_b;
  part_type_shape(p, pt_shape_pixel);
  part_type_size(p, 1, 1, 0, false);
  part_type_color3(p, c_orange, c_white, c_white);
  part_type_alpha3(p, 1, 1, 0);
  part_type_speed(p, 0.1, 0.75, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.5, room_speed * 1);  
  #endregion Seeking Shots

#endregion Bullet Powerup Trails

#region Enemy Shot Particles

//// Shot trail for a tiny enemy bullet
//global.particle_bullet_trail_enemy_tiny = part_type_create();
//var p = global.particle_bullet_trail_enemy_tiny;
//part_type_shape(p, pt_shape_sphere);
//part_type_size(p, 0.01, 0.05, 0, 0.02);
//part_type_color3(p, c_lime, c_green, c_olive);
//part_type_alpha2(p, 1, 0);
//part_type_speed(p, 0, 0.3, 0, 0);
//part_type_direction(p, 0, 360, 0, false);
//part_type_orientation(p, 0, 0, 0, false, false);
//part_type_blend(p, true);
//part_type_life(p, room_speed * 0.25, room_speed * 0.5);

// Impact effect for a tiny enemy bullet
global.particle_impact_flare_enemy_tiny = part_type_create();
var p = global.particle_impact_flare_enemy_tiny;
part_type_shape(p, pt_shape_flare);
part_type_size(p, 1, 1, -0.05, false);
part_type_color3(p, c_lime, c_green, c_olive);
part_type_alpha2(p, 0.75, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 4, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.25, room_speed * 0.75);

global.particle_impact_spark_enemy_tiny = part_type_create();
var p = global.particle_impact_spark_enemy_tiny;
part_type_shape(p, pt_shape_spark);
part_type_size(p, 1, 1, 0.05, false);
part_type_color2(p, c_lime, c_green);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 2, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.05, room_speed * 0.1);


//// Shot trail for a small enemy bullet
//global.particle_bullet_trail_enemy_small = part_type_create();
//var p = global.particle_bullet_trail_enemy_small;
//part_type_shape(p, pt_shape_sphere);
//part_type_size(p, 0.05, 0.1, 0, 0.02);
//part_type_color3(p, c_lime, c_green, c_olive);
//part_type_alpha2(p, 1, 0);
//part_type_speed(p, 0, 0.3, 0, 0);
//part_type_direction(p, 0, 360, 0, false);
//part_type_orientation(p, 0, 0, 0, false, false);
//part_type_blend(p, true);
//part_type_life(p, room_speed * 0.5, room_speed * 0.75);

// Impact effect for a small enemy bullet
global.particle_impact_flare_enemy_small = part_type_create();
var p = global.particle_impact_flare_enemy_small;
part_type_shape(p, pt_shape_flare);
part_type_size(p, 1.25, 1.25, -0.05, false);
part_type_color3(p, c_lime, c_green, c_olive);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 4, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 1);

global.particle_impact_spark_enemy_small = part_type_create();
var p = global.particle_impact_spark_enemy_small;
part_type_shape(p, pt_shape_spark);
part_type_size(p, 1.25, 1.25, 0.05, false);
part_type_color2(p, c_lime, c_green);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 2, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.1, room_speed * 0.2);

#endregion Enemy Shot Particles

#region Player Shot Particles

//// Shot trail for a small bullet
//global.particle_bullet_trail_small = part_type_create();
//var p = global.particle_bullet_trail_small;
//part_type_shape(p, pt_shape_sphere);
//part_type_size(p, 0.01, 0.05, 0, 0.02);
//part_type_color3(p, c_white, c_teal, c_grey);
//part_type_alpha2(p, 1, 0);
//part_type_speed(p, 0, 0.3, 0, 0);
//part_type_direction(p, 0, 360, 0, false);
//part_type_orientation(p, 0, 0, 0, false, false);
//part_type_blend(p, true);
//part_type_life(p, room_speed * 0.25, room_speed * 0.5);
  
// Impact effect for a small bullet
global.particle_impact_flare_small = part_type_create();
var p = global.particle_impact_flare_small;
part_type_shape(p, pt_shape_flare);
part_type_size(p, 1, 1, -0.05, false);
part_type_color3(p, c_white, c_orange, c_maroon);
part_type_alpha2(p, 0.75, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 4, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.25, room_speed * 0.75);

global.particle_impact_spark_small = part_type_create();
var p = global.particle_impact_spark_small;
part_type_shape(p, pt_shape_spark);
part_type_size(p, 1, 1, 0.05, false);
part_type_color2(p, c_white, c_yellow);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 360, 2, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.05, room_speed * 0.1);

#endregion Player Shot Particles

#region Shield Particle Effects

global.particle_impact_shield_circle = part_type_create();
var p = global.particle_impact_shield_circle;
part_type_shape(p, pt_shape_circle);
part_type_size(p, 0.5, 1, -0.05, false);
part_type_color2(p, c_aqua, c_blue);
part_type_alpha2(p, 0.8, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.2, room_speed * 0.3);

global.particle_impact_shield_sphere = part_type_create();
var p = global.particle_impact_shield_sphere;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.01, 0.05, 0, 0.02);
part_type_color3(p, c_aqua, c_blue, c_navy);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 1, room_speed * 1.5);
  
global.particle_shield_popping_circle = part_type_create();
var p = global.particle_shield_popping_circle;
part_type_shape(p, pt_shape_circle);
part_type_size(p, 1, 1, 0.25, false);
part_type_color2(p, c_aqua, c_blue);
part_type_alpha2(p, 0.8, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.35, room_speed * 0.35);
  
global.particle_shield_popping_sphere = part_type_create();
var p = global.particle_shield_popping_sphere;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.2, 0, 0.1);
part_type_color3(p, c_aqua, c_blue, c_navy);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0, 0, false);
part_type_direction(p, 0, 0, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 1.5, room_speed * 3);

#endregion Shield Particle Effects
  
#region Debris Particles

// Tiny hot debris
global.particle_debris_tiny_hot = part_type_create();
var p = global.particle_debris_tiny_hot;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.01, 0.05, 0, 0.02);
part_type_color3(p, c_yellow, c_orange, c_maroon);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 1, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 2.5);

// Glass dust debris a
global.particle_debris_glass_dust_a = part_type_create();
var p = global.particle_debris_glass_dust_a;
part_type_shape(p, pt_shape_pixel);
part_type_size(p, 1, 1.5, 0, 0);
part_type_color2(p, c_white, c_black);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 3, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 1.5, room_speed * 4);

// Glass dust debris b
global.particle_debris_glass_dust_b = part_type_create();
var p = global.particle_debris_glass_dust_b;
part_type_shape(p, pt_shape_pixel);
part_type_size(p, 1, 1.5, 0, 0);
part_type_color2(p, c_black, c_white);
part_type_alpha3(p, 1, 1, 0);
part_type_speed(p, 0, 3, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 1.5, room_speed * 4);
  
// Slower-fading glow
global.particle_debris_small_hot = part_type_create();
var p = global.particle_debris_small_hot;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.2, 0, 0.05);
part_type_color3(p, c_orange, c_red, c_maroon);
part_type_alpha2(p, 0.75, 0);
part_type_speed(p, 0, 0.1, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 1.5, room_speed * 3.5);
  
// Asteroid debris
global.particle_debris_asteroid = part_type_create();
var p = global.particle_debris_asteroid;
part_type_sprite(p, spr_debris_asteroid, false, false, true);
part_type_size(p, 0.5, 2.5, 0, false);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 1, 0, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_orientation(p, 0, 360, 0, 0, false);
part_type_blend(p, false);
part_type_life(p, room_speed * 0.5, room_speed * 2);

// Asteroid Cluster Ejecta Debris
global.particle_debris_asteroid_cluster_ejecta_a = part_type_create();
var p = global.particle_debris_asteroid_cluster_ejecta_a;
part_type_shape(p, pt_shape_explosion);
part_type_size(p, 0.5, 1.5, 0.2, false);
part_type_color1(p, c_dkgray);
part_type_alpha3(p, 0.75, 0.15, 0);
part_type_speed(p, 0, 1, 0, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_orientation(p, 0, 360, 0, 0, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 1.5);

global.particle_debris_asteroid_cluster_ejecta_b = part_type_create();
var p = global.particle_debris_asteroid_cluster_ejecta_b;
part_type_shape(p, pt_shape_cloud);
part_type_size(p, 0.5, 1.5, 0.2, false);
part_type_color1(p, c_gray);
part_type_alpha3(p, 0.75, 0.15, 0);
part_type_speed(p, 0, 1, 0, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_orientation(p, 0, 360, 0, 0, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 1.5);
  
// Droid debris
global.particle_debris_droid = part_type_create();
var p = global.particle_debris_droid;
part_type_sprite(p, spr_debris_droid, false, false, true);
part_type_size(p, 0.5, 1.5, 0, false);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 1, 0, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_orientation(p, 0, 360, 0, 0, false);
part_type_blend(p, false);
part_type_life(p, room_speed * 1, room_speed * 3.5);

// Platform Core debris
global.particle_debris_platform_core = part_type_create();
var p = global.particle_debris_platform_core;
part_type_sprite(p, spr_debris_platform_core, false, false, true);
part_type_size(p, 0.5, 1.5, 0, false);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0.5, 2, 0, 0);
part_type_direction(p, 0, 360, 0, 0);
part_type_orientation(p, 0, 360, 10, 0, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 2, room_speed * 5);
  
#endregion Debris Particles

#region Powerup Particles

// Gold powerup sparkle
global.particle_powerup_gold_sparkle = part_type_create();
var p = global.particle_powerup_gold_sparkle;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_yellow, c_white, c_yellow);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.2, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 1);
  
// Silver powerup sparkle
global.particle_powerup_silver_sparkle = part_type_create();
var p = global.particle_powerup_silver_sparkle;
part_type_shape(p, pt_shape_sphere);
part_type_size(p, 0.05, 0.1, 0, 0.02);
part_type_color3(p, c_gray, c_white, c_gray);
part_type_alpha2(p, 1, 0);
part_type_speed(p, 0, 0.2, 0, 0.1);
part_type_direction(p, 0, 360, 0, false);
part_type_orientation(p, 0, 0, 0, false, false);
part_type_blend(p, true);
part_type_life(p, room_speed * 0.5, room_speed * 1);

#endregion Powerup Particles

#region Beam Effects
  // Muzzle-Glow for Tractor Beam
  global.particle_beam_grapple_muzzle = part_type_create();
  var p = global.particle_beam_grapple_muzzle;
  part_type_shape(p, pt_shape_flare);
  part_type_size(p, 0.5, 0.5, -0.05, false);
  part_type_color3(p, c_white, c_gray, c_dkgray);
  part_type_alpha2(p, 0.75, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 360, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.25, room_speed * 0.25);

  // Impact for Tractor Beam
  global.particle_beam_grapple_impact = part_type_create();
  var p = global.particle_beam_grapple_impact;
  part_type_shape(p, pt_shape_circle);
  part_type_size(p, 0.5, 0.1, -0.01, false);
  part_type_color3(p, c_gray, c_silver, c_dkgray);
  part_type_alpha2(p, 0.5, 0);
  part_type_speed(p, 0, 0.6, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1, room_speed * 1.5);
  
  // Muzzle-Glow for Point-Defence Beam
  global.particle_beam_point_defence_muzzle = part_type_create();
  var p = global.particle_beam_point_defence_muzzle;
  part_type_shape(p, pt_shape_flare);
  part_type_size(p, 0.5, 0.5, -0.05, false);
  part_type_color3(p, c_red, c_maroon, c_dkgray);
  part_type_alpha2(p, 1, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 360, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.25, room_speed * 0.25);
  
  // Impact for Point-Defence Beam
  global.particle_beam_point_defence_impact = part_type_create();
  var p = global.particle_beam_point_defence_impact;
  part_type_shape(p, pt_shape_flare);
  part_type_size(p, 0.75, 0.75, -0.05, false);
  part_type_color3(p, c_orange, c_red, c_maroon);
  part_type_alpha3(p, 1, 0.75, 0);
  part_type_speed(p, 0, 0, 0, false);
  part_type_direction(p, 0, 0, 0, false);
  part_type_orientation(p, 0, 360, 4, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 1, room_speed * 1);
  
  // Impact for Shield Drain on Recipient
  global.particle_beam_shield_drain_impact = part_type_create();
  var p = global.particle_beam_shield_drain_impact;
  part_type_shape(p, pt_shape_circle);
  part_type_size(p, 0.25, 0.1, -0.01, false);
  part_type_color2(p, c_blue, c_navy);
  part_type_alpha2(p, 0.5, 0);
  part_type_speed(p, 0, 0, 0, 0);
  part_type_direction(p, 0, 360, 0, false);
  part_type_orientation(p, 0, 0, 0, false, false);
  part_type_blend(p, true);
  part_type_life(p, room_speed * 0.2, room_speed * 0.2);  

#endregion Beam Effects

#region Engine Effects

#endregion Engine Effects